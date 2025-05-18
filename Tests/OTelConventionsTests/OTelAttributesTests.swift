import OTelConventions
import XCTest

class OTelHttpAttributesTests: XCTestCase {
    func testAttribute() async throws {
        XCTAssertEqual(OTelAttribute.http.response.statusCode, "http.response.status_code")
        // TODO: Re-enable this check when we have generated attributes that overlap with Swift keywords
        // XCTAssertEqual(OTelAttribute.error.type, "error.type") // Check Swift keywords (in this case, type)
    }
}
