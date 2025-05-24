//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift OTel open source project
//
// Copyright (c) 2025 the Swift OTel project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

/// Structure of an OTel semconv registry.yaml file.
/// All registry files are of type `attribute_group`
/// See: https://github.com/open-telemetry/weaver/blob/main/schemas/semconv-syntax.md#attribute-group-semantic-convention
struct RegistryFile: Decodable {
    let groups: [Group]
}

struct Group: Decodable {
    let id: String
    let type: GroupType
    let stability: Stability?
    let display_name: String?
    let brief: String?
    let attributes: [Attribute]

    enum GroupType: String, Codable {
        case attribute_group
        case metric
        case span
    }

    enum Instrument: String, Codable {
        case gauge
        case updowncounter
    }
}

struct Attribute: Decodable {
    let id: String
    let type: AttributeType
    let stability: Stability
    let brief: String?
    let note: String?
    let deprecated: String?
    let examples: [String]?

    enum RequirementLevel: String, Codable {
        case required
    }

    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(String.self, forKey: .id)
        if let type = try? container.decode(StandardType.self, forKey: .type) {
            self.type = type
        } else if let type = try? container.decode(EnumType.self, forKey: .type) {
            self.type = type
        } else {
            throw DecodingError.dataCorrupted(
                .init(codingPath: container.codingPath, debugDescription: "Unexpected `type` value")
            )
        }
        stability = try container.decodeIfPresent(Stability.self, forKey: .stability) ?? .experimental
        brief = try container.decodeIfPresent(String.self, forKey: .brief)
        note = try container.decodeIfPresent(String.self, forKey: .note)
        deprecated = try container.decodeIfPresent(String.self, forKey: .deprecated)
        if !container.contains(.examples) {
            examples = nil
        } else if let example = try? container.decode(String.self, forKey: .examples) {
            examples = [example]
        } else {
            let examples = try? container.decode([String].self, forKey: .examples)
            self.examples = examples
        }
    }

    enum CodingKeys: String, CodingKey {
        case id
        case type
        case stability
        case brief
        case note
        case deprecated
        case examples
    }

    // Attributes may have a declared type or be a list of enum values
    protocol AttributeType: Codable, Sendable {}

    enum StandardType: String, Codable, AttributeType {
        case boolean
        case booleanArray = "boolean[]"
        case templateBoolean = "template[boolean]"
        case templateBooleanArray = "template[boolean[]]"
        case double
        case doubleArray = "double[]"
        case templateDouble = "template[double]"
        case templateDoubleArray = "template[double[]]"
        case int
        case intArray = "int[]"
        case templateInt = "template[int]"
        case templateIntArray = "template[int[]]"
        case string
        case stringArray = "string[]"
        case templateString = "template[string]"
        case templateStringArray = "template[string[]]"
    }

    struct EnumType: AttributeType {
        let members: [EnumMember]

        struct EnumMember: Codable {
            let id: String
            let value: String
            let deprecated: String?
            let brief: String?
            let stability: Stability?
        }
    }
}

// Attributes examples can vary in format
protocol AttributeExample: Codable {}

extension Bool: AttributeExample {}
extension Double: AttributeExample {}
extension Int: AttributeExample {}
extension String: AttributeExample {}

enum Stability: String, Codable {
    case development
    case experimental
    case releaseCandidate = "release_candidate"
    case stable
}
