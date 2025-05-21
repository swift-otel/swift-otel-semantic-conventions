// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `exception` namespace
    public var exception: ExceptionAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
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
            /// `exception.escaped`: SHOULD be set to true if the exception event is recorded at a point where it is known that the exception is escaping the scope of the span. 
            /// 
            /// - Stability: stable
            /// 
            /// - Type: boolean
            /// 
            /// An exception is considered to have escaped (or left) the scope of a span, if that span is ended while the exception is still logically "in flight". This may be actually "in flight" in some languages (e.g. if the exception is passed to a Context manager's `__exit__` method in Python) but will usually be caught at the point of recording the exception in most languages.  It is usually not possible to determine at the point where an exception is thrown whether it will escape the scope of a span. However, it is trivial to know that an exception will escape, if one checks for an active exception just before ending the span, as done in the [example for recording span exceptions](https://opentelemetry.io/docs/specs/semconv/exceptions/exceptions-spans/#recording-an-exception).  It follows that an exception may still escape the scope of the span even if the `exception.escaped` attribute was not set or set to false, since the event might have been recorded at a time where it was not clear whether the exception will escape.
            public var escaped: Self.Key<Bool> { .init(name: OTelAttributes.exception.escaped) }
    
            /// `exception.message`: The exception message.
            /// 
            /// - Stability: stable
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `Division by zero`
            ///     - `Can't convert 'int' object to str implicitly`
            public var message: Self.Key<String> { .init(name: OTelAttributes.exception.message) }
    
            /// `exception.stacktrace`: A stacktrace as a string in the natural representation for the language runtime. The representation is to be determined and documented by each language SIG. 
            /// 
            /// - Stability: stable
            /// 
            /// - Type: string
            /// 
            /// - Example: `Exception in thread "main" java.lang.RuntimeException: Test exception\n at com.example.GenerateTrace.methodB(GenerateTrace.java:13)\n at com.example.GenerateTrace.methodA(GenerateTrace.java:9)\n at com.example.GenerateTrace.main(GenerateTrace.java:5)
            /// `
            public var stacktrace: Self.Key<String> { .init(name: OTelAttributes.exception.stacktrace) }
    
            /// `exception.type`: The type of the exception (its fully-qualified class name, if applicable). The dynamic type of the exception should be preferred over the static type in languages that support it. 
            /// 
            /// - Stability: stable
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `java.net.ConnectException`
            ///     - `OSError`
            public var type: Self.Key<String> { .init(name: OTelAttributes.exception.type) }
        }
    
    
    }
}