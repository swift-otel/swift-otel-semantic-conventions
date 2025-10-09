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

// DO NOT EDIT. This file is generated automatically. See README for details.

extension OTelAttribute {
    #if Experimental
    /// `cloudevents` namespace
    public enum cloudevents {
        /// `cloudevents.event_id`: The [event_id](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#id) uniquely identifies the event.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Examples:
        ///     - `123e4567-e89b-12d3-a456-426614174000`
        ///     - `0001`
        public static let eventId = "cloudevents.event_id"

        /// `cloudevents.event_source`: The [source](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#source-1) identifies the context in which an event happened.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Examples:
        ///     - `https://github.com/cloudevents`
        ///     - `/cloudevents/spec/pull/123`
        ///     - `my-service`
        public static let eventSource = "cloudevents.event_source"

        /// `cloudevents.event_spec_version`: The [version of the CloudEvents specification](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#specversion) which the event uses.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `1.0`
        public static let eventSpecVersion = "cloudevents.event_spec_version"

        /// `cloudevents.event_subject`: The [subject](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#subject) of the event in the context of the event producer (identified by source).
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `mynewfile.jpg`
        public static let eventSubject = "cloudevents.event_subject"

        /// `cloudevents.event_type`: The [event_type](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#type) contains a value describing the type of event related to the originating occurrence.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Examples:
        ///     - `com.github.pull_request.opened`
        ///     - `com.example.object.deleted.v2`
        public static let eventType = "cloudevents.event_type"
    }
    #endif
}
