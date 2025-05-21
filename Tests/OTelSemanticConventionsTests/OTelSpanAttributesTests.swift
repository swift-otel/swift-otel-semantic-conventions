#if Tracing

import OTelSemanticConventions
import Testing
import Tracing

struct SpanAttributeTests {
    @Test func spanAttributes() async throws {
        var attributes = SpanAttributes()
        attributes.http.response.statusCode = 200
        #expect(attributes.get(OTelAttribute.http.response.statusCode) == 200)
    }

    @Test func spanAttributesEnum() async throws {
        var attributes = SpanAttributes()
        attributes.http.request.method = .post
        #expect(attributes.get(OTelAttribute.http.request.method) == "POST")
    }

    @Test func spanAttributesTemplate() async throws {
        var attributes = SpanAttributes()
        attributes.http.request.header.set("X-Foo", to: ["bar", "baz"])
        #expect(attributes.get(OTelAttribute.http.request.header + ".x_foo") == .stringArray(["bar", "baz"]))
    }
}

#endif
