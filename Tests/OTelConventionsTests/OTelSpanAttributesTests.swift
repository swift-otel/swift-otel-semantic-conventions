import OTelConventions
import OTelSpanConventions
import Tracing
import XCTest

class SpanAttributeTests: XCTestCase {
    func testSpanAttributes() async throws {
        var attributes = SpanAttributes()
        attributes.http.response.status_code = 200
        XCTAssertEqual(attributes.get(OTelAttribute.http.response.status_code), 200)
        attributes.host.ip = ["192.168.1.140", "fe80::abc2:4a28:737a:609e"]
        XCTAssertEqual(attributes.get(OTelAttribute.host.ip), .stringArray(["192.168.1.140", "fe80::abc2:4a28:737a:609e"]))
    }

    func testSpanAttributesEnum() async throws {
        var attributes = SpanAttributes()
        attributes.http.request.method = .post
        XCTAssertEqual(attributes.get(OTelAttribute.http.request.method), "POST")
    }

    func testSpanAttributesTemplate() async throws {
        var attributes = SpanAttributes()
        attributes.http.request.header.set("X-Foo", to: ["bar", "baz"])
        XCTAssertEqual(attributes.get(OTelAttribute.http.request.header + ".x_foo"), .stringArray(["bar", "baz"]))
    }
}
