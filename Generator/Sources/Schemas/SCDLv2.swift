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

// This file defines the Semantic Convenetions Definition Language v1.
// See: https://github.com/open-telemetry/weaver/blob/main/schemas/semconv-syntax.v2.md
enum SDLCv2 {
    struct Document: Decodable {
        static let fileFormat = "definition/2"
        let fileFormat: String
        let attributes: [Attribute]

        init(from decoder: any Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.fileFormat = try container.decode(String.self, forKey: .fileFormat)
            guard fileFormat == Self.fileFormat else {
                throw DecodingError.dataCorrupted(
                    .init(
                        codingPath: container.codingPath,
                        debugDescription: "`\(CodingKeys.fileFormat.rawValue)` must be `\(Self.fileFormat)`"
                    )
                )
            }
            self.attributes = try container.decode([Attribute].self, forKey: .attributes)
        }

        enum CodingKeys: String, CodingKey {
            case fileFormat = "file_format"
            case attributes
        }
    }

    struct Attribute: Decodable {
        let key: String
        let type: AttributeType
        let brief: String
        let stability: Stability
        let note: String?
        let deprecated: Deprecated?
        let examples: [String]?

        init(
            key: String,
            type: AttributeType,
            brief: String,
            stability: Stability,
            note: String?,
            deprecated: Deprecated?,
            examples: [String]?
        ) {
            self.key = key
            self.type = type
            self.brief = brief
            self.stability = stability
            self.note = note
            self.deprecated = deprecated
            self.examples = examples
        }

        init(from decoder: any Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            key = try container.decode(String.self, forKey: .key)
            type = try container.decode(Attribute.StandardType.self, forKey: .type)
            brief = try container.decode(String.self, forKey: .brief)
            stability = try container.decode(Stability.self, forKey: .stability)
            note = try container.decodeIfPresent(String.self, forKey: .note)
            deprecated = try container.decodeIfPresent(Deprecated.self, forKey: .deprecated)
            if !container.contains(.examples) {
                examples = nil
            } else if let example = try? container.decode(String.self, forKey: .examples) {
                examples = [example]
            } else {
                examples = try? container.decode([String].self, forKey: .examples)
            }
        }

        enum CodingKeys: String, CodingKey {
            case key
            case type
            case brief
            case stability
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
            case any
        }

        struct EnumType: AttributeType {
            let members: [EnumMember]

            struct EnumMember: Codable {
                let id: String
                let value: String
                let brief: String?
                let note: String?
                let stability: Stability
                let deprecated: Deprecated?
            }
        }
    }

    // Attributes examples can vary in format
    protocol AttributeExample: Codable {}

    enum Deprecated: Codable, Equatable {
        case obsoleted(note: String)
        case renamed(renamed_to: String, note: String)
        case uncategorized(note: String)
        case unspecified(note: String)

        init(from decoder: any Decoder) throws {
            if let container = try? decoder.singleValueContainer(),
                let note = try? container.decode(String.self)
            {
                self = .uncategorized(note: note)
            } else if let container = try? decoder.container(keyedBy: CodingKeys.self),
                let reason = try? container.decode(Reason.self, forKey: .reason)
            {
                switch reason {
                case .obsoleted:
                    let note = try container.decode(String.self, forKey: .note)
                    self = .obsoleted(note: note)
                case .renamed:
                    let renamed_to = try container.decode(String.self, forKey: .renamed_to)
                    let note = try container.decode(String.self, forKey: .note)
                    self = .renamed(renamed_to: renamed_to, note: note)
                case .uncategorized:
                    let note = try container.decode(String.self, forKey: .note)
                    self = .uncategorized(note: note)
                case .unspecified:
                    let note = try container.decode(String.self, forKey: .note)
                    self = .unspecified(note: note)
                }
            } else {
                throw DecodingError.dataCorrupted(
                    .init(
                        codingPath: decoder.codingPath,
                        debugDescription: "Unexpected format for `deprecated`. Expected an object or string."
                    )
                )
            }
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            switch self {
            case .obsoleted(let note):
                try container.encode(Reason.obsoleted, forKey: .reason)
                try container.encode(note, forKey: .note)
            case .renamed(let renamed_to, let note):
                try container.encode(Reason.renamed, forKey: .reason)
                try container.encode(renamed_to, forKey: .renamed_to)
                try container.encode(note, forKey: .note)
            case .uncategorized(let note):
                try container.encode(Reason.uncategorized, forKey: .reason)
                try container.encode(note, forKey: .note)
            case .unspecified(let note):
                try container.encode(Reason.unspecified, forKey: .reason)
                try container.encode(note, forKey: .note)
            }
        }

        private enum CodingKeys: String, CodingKey {
            case reason
            case renamed_to
            case note
        }

        private enum Reason: String, Codable {
            case obsoleted
            case renamed
            case uncategorized
            case unspecified
        }
    }

    enum Stability: String, Codable {
        case alpha
        case beta
        case development
        case releaseCandidate = "release_candidate"
        case stable
    }
}

extension Bool: SDLCv2.AttributeExample {}
extension Double: SDLCv2.AttributeExample {}
extension Int: SDLCv2.AttributeExample {}
extension String: SDLCv2.AttributeExample {}
