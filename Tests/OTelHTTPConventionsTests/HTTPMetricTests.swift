import Metrics
import OTelHTTPMetricsConventions
import OTelMetricsConventionsTestSupport
import XCTest

final class HTTPMetricTests: XCTestCase {
    func test_timer() {
        let timer = OTelHTTPMetric.Server.requestDuration(method: "get", urlScheme: "https", route: "/users/:userID")

        XCTAssertEqual(timer.label, "http.server.request.duration")
        XCTAssertDimensionsEqual(
            timer.dimensions,
            [
                "http.request.method": "GET",
                "http.url.scheme": "https",
                "http.route": "/users/:userID",
            ]
        )
    }
}
