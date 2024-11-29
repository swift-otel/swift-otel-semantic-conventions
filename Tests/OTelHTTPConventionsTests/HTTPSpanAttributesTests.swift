import OTelHTTPTracingConventions
import Tracing
import XCTest

final class OTelHTTPTracingConventionsTests: XCTestCase {
    func test_example() {
        var attributes = SpanAttributes()

        attributes.http.request.method = "GET"
        XCTAssertEqual(attributes["http.request.method"]?.toSpanAttribute(), "GET")
    }
}
