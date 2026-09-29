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

// Compatibility to turn v1 schema types into v2

extension SDLCv2.Attribute {
    var v1: SDLCv1.Attribute {
        .init(
            id: self.key,
            type: self.type.v1,
            stability: self.stability.v1,
            brief: self.brief,
            note: self.note,
            deprecated: self.deprecated?.v1,
            examples: self.examples
        )
    }
}

extension SDLCv2.Attribute.AttributeType {
    var v1: SDLCv1.Attribute.AttributeType {
        if let standardType = self as? SDLCv2.Attribute.StandardType {
            return switch standardType {
            case .boolean: SDLCv1.Attribute.StandardType.boolean
            case .booleanArray: SDLCv1.Attribute.StandardType.booleanArray
            case .templateBoolean: SDLCv1.Attribute.StandardType.templateBoolean
            case .templateBooleanArray: SDLCv1.Attribute.StandardType.templateBooleanArray
            case .double: SDLCv1.Attribute.StandardType.double
            case .doubleArray: SDLCv1.Attribute.StandardType.doubleArray
            case .templateDouble: SDLCv1.Attribute.StandardType.templateDouble
            case .templateDoubleArray: SDLCv1.Attribute.StandardType.templateDoubleArray
            case .int: SDLCv1.Attribute.StandardType.int
            case .intArray: SDLCv1.Attribute.StandardType.intArray
            case .templateInt: SDLCv1.Attribute.StandardType.templateInt
            case .templateIntArray: SDLCv1.Attribute.StandardType.templateIntArray
            case .string: SDLCv1.Attribute.StandardType.string
            case .stringArray: SDLCv1.Attribute.StandardType.stringArray
            case .templateString: SDLCv1.Attribute.StandardType.templateString
            case .templateStringArray: SDLCv1.Attribute.StandardType.templateStringArray
            case .any: SDLCv1.Attribute.StandardType.any
            }
        } else if let enumType = self as? SDLCv2.Attribute.EnumType {
            return SDLCv1.Attribute.EnumType(
                members: enumType.members.map {
                    .init(
                        id: $0.id,
                        value: $0.value,
                        deprecated: $0.deprecated?.v1,
                        brief: $0.brief,
                        stability: $0.stability.v1
                    )
                }
            )
        } else {
            fatalError("TODO")
        }
    }
}

extension SDLCv2.Deprecated {
    var v1: SDLCv1.Deprecated {
        switch self {
        case let .obsoleted(note: note): .obsoleted(note: note)
        case let .renamed(renamed_to: renamed_to, note: note): .renamed(renamed_to: renamed_to, note: note)
        case let .uncategorized(note: note): .uncategorized(note: note)
        case let .unspecified(note: note): .uncategorized(note: note)
        }
    }
}

extension SDLCv2.Stability {
    var v1: SDLCv1.Stability {
        switch self {
        case .alpha: .alpha
        case .beta: .beta
        case .development: .development
        case .releaseCandidate: .releaseCandidate
        case .stable: .stable
        }
    }
}
