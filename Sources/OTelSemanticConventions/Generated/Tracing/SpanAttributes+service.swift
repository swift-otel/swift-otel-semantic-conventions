// DO NOT EDIT. This file is generated automatically. See README for details.

#if Tracing

import Tracing

extension SpanAttributes {
    /// `service` namespace
    public var service: ServiceAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct ServiceAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes

        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `service.name`: Logical name of the service.
            ///
            /// - Stability: stable
            ///
            /// - Type: string
            ///
            /// MUST be the same for all instances of horizontally scaled services. If the value was not specified, SDKs MUST fallback to `unknown_service:` concatenated with [`process.executable.name`](process.md), e.g. `unknown_service:bash`. If `process.executable.name` is not available, the value MUST be set to `unknown_service`.
            ///
            /// - Example: `shoppingcart`
            public var name: Self.Key<String> { .init(name: OTelAttribute.service.name) }

            /// `service.version`: The version string of the service API or implementation. The format is not defined by these conventions.
            ///
            /// - Stability: stable
            ///
            /// - Type: string
            ///
            /// - Examples:
            ///     - `2.0.0`
            ///     - `a01dbef8a`
            public var version: Self.Key<String> { .init(name: OTelAttribute.service.version) }
        }
    }
}

#endif
