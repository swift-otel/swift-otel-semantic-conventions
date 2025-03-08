// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `aspnetcore` namespace
    public var aspnetcore: AspnetcoreAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct AspnetcoreAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
    
        }
    
        /// `aspnetcore.diagnostics` namespace
        public var diagnostics: DiagnosticsAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct DiagnosticsAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
        
            }
        
            /// `aspnetcore.diagnostics.exception` namespace
            public var exception: ExceptionAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct ExceptionAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `aspnetcore.diagnostics.exception.result`: ASP.NET Core exception middleware handling result
                    /// 
                    /// - Stability: stable
                    /// 
                    /// - Type: enum
                    ///     - `handled`: Exception was handled by the exception handling middleware.
                    ///     - `unhandled`: Exception was not handled by the exception handling middleware.
                    ///     - `skipped`: Exception handling was skipped because the response had started.
                    ///     - `aborted`: Exception handling didn't run because the request was aborted.
                    /// 
                    /// - Examples:
                    ///     - `handled`
                    ///     - `unhandled`
                    public var result: Self.Key<ResultEnum> { .init(name: OTelAttributes.aspnetcore.diagnostics.exception.result) }
                    
                    public struct ResultEnum: SpanAttributeConvertible {
                        private let rawValue: String
                        /// `handled`: Exception was handled by the exception handling middleware.
                        public static let handled = Self.init(rawValue: "handled")
                        /// `unhandled`: Exception was not handled by the exception handling middleware.
                        public static let unhandled = Self.init(rawValue: "unhandled")
                        /// `skipped`: Exception handling was skipped because the response had started.
                        public static let skipped = Self.init(rawValue: "skipped")
                        /// `aborted`: Exception handling didn't run because the request was aborted.
                        public static let aborted = Self.init(rawValue: "aborted")
                        public func toSpanAttribute() -> Tracing.SpanAttribute {
                            return .string(self.rawValue)
                        }
                    }
                }
            
            
            }
        
            /// `aspnetcore.diagnostics.handler` namespace
            public var handler: HandlerAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct HandlerAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `aspnetcore.diagnostics.handler.type`: Full type name of the [`IExceptionHandler`](https://learn.microsoft.com/dotnet/api/microsoft.aspnetcore.diagnostics.iexceptionhandler) implementation that handled the exception.
                    /// 
                    /// - Stability: stable
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `Contoso.MyHandler`
                    public var type: Self.Key<String> { .init(name: OTelAttributes.aspnetcore.diagnostics.handler.type) }
                }
            
            
            }
        }
    
        /// `aspnetcore.rate_limiting` namespace
        public var rate_limiting: RateLimitingAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct RateLimitingAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `aspnetcore.rate_limiting.policy`: Rate limiting policy name.
                /// 
                /// - Stability: stable
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `fixed`
                ///     - `sliding`
                ///     - `token`
                public var policy: Self.Key<String> { .init(name: OTelAttributes.aspnetcore.rate_limiting.policy) }
        
                /// `aspnetcore.rate_limiting.result`: Rate-limiting result, shows whether the lease was acquired or contains a rejection reason
                /// 
                /// - Stability: stable
                /// 
                /// - Type: enum
                ///     - `acquired`: Lease was acquired
                ///     - `endpoint_limiter`: Lease request was rejected by the endpoint limiter
                ///     - `global_limiter`: Lease request was rejected by the global limiter
                ///     - `request_canceled`: Lease request was canceled
                /// 
                /// - Examples:
                ///     - `acquired`
                ///     - `request_canceled`
                public var result: Self.Key<ResultEnum> { .init(name: OTelAttributes.aspnetcore.rate_limiting.result) }
                
                public struct ResultEnum: SpanAttributeConvertible {
                    private let rawValue: String
                    /// `acquired`: Lease was acquired
                    public static let acquired = Self.init(rawValue: "acquired")
                    /// `endpoint_limiter`: Lease request was rejected by the endpoint limiter
                    public static let endpoint_limiter = Self.init(rawValue: "endpoint_limiter")
                    /// `global_limiter`: Lease request was rejected by the global limiter
                    public static let global_limiter = Self.init(rawValue: "global_limiter")
                    /// `request_canceled`: Lease request was canceled
                    public static let request_canceled = Self.init(rawValue: "request_canceled")
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    
        /// `aspnetcore.request` namespace
        public var request: RequestAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct RequestAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `aspnetcore.request.is_unhandled`: Flag indicating if request was handled by the application pipeline.
                /// 
                /// - Stability: stable
                /// 
                /// - Type: boolean
                /// 
                /// - Example: `true`
                public var is_unhandled: Self.Key<Bool> { .init(name: OTelAttributes.aspnetcore.request.is_unhandled) }
            }
        
        
        }
    
        /// `aspnetcore.routing` namespace
        public var routing: RoutingAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct RoutingAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `aspnetcore.routing.is_fallback`: A value that indicates whether the matched route is a fallback route.
                /// 
                /// - Stability: stable
                /// 
                /// - Type: boolean
                /// 
                /// - Example: `true`
                public var is_fallback: Self.Key<Bool> { .init(name: OTelAttributes.aspnetcore.routing.is_fallback) }
        
                /// `aspnetcore.routing.match_status`: Match result - success or failure
                /// 
                /// - Stability: stable
                /// 
                /// - Type: enum
                ///     - `success`: Match succeeded
                ///     - `failure`: Match failed
                /// 
                /// - Examples:
                ///     - `success`
                ///     - `failure`
                public var match_status: Self.Key<Match_StatusEnum> { .init(name: OTelAttributes.aspnetcore.routing.match_status) }
                
                public struct Match_StatusEnum: SpanAttributeConvertible {
                    private let rawValue: String
                    /// `success`: Match succeeded
                    public static let success = Self.init(rawValue: "success")
                    /// `failure`: Match failed
                    public static let failure = Self.init(rawValue: "failure")
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    }
}