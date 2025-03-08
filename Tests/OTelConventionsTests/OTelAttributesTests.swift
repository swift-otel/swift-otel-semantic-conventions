import OTelConventions
import XCTest

class OTelHttpAttributesTests: XCTestCase {
    func testAttribute() async throws {
        XCTAssertEqual(OTelAttribute.http.response.status_code, "http.response.status_code")
    }
}
