import OTelConventions
import XCTest

class OTelHttpAttributesTests: XCTestCase {
    func testAttribute() async throws {
        XCTAssertEqual(OTelAttribute.http.response.statusCode, "http.response.status_code")
        XCTAssertEqual(OTelAttribute.error.type, "error.type") // Check Swift keywords (in this case, type)
    }
}
