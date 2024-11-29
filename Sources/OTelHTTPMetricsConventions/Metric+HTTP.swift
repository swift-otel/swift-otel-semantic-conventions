import CoreMetrics
import OTelMetricsConventionsCore

public enum OTelHTTPMetric {
    public enum Server {
        /// A timer recording the HTTP server request duration.
        public static func requestDuration(
            method: String,
            urlScheme: String,
            route: String?
        ) -> Timer {
            let dimensions = RequestDuration.dimensions(method: method, urlScheme: urlScheme, route: route)
            return Timer(label: RequestDuration.label, dimensions: dimensions, preferredDisplayUnit: .seconds)
        }

        public enum RequestDuration: OTelSemanticMetric {
            public static let label = "http.server.request.duration"

            public static func dimensions(
                method: String,
                urlScheme: String,
                route: String?
            ) -> [(String, String)] {
                var dimensions = [
                    (Dimension.method, method.uppercased()),
                    (Dimension.urlScheme, urlScheme),
                ]

                if let route {
                    dimensions.append((Dimension.route, route))
                }

                return dimensions
            }

            public struct Dimension: OTelSemanticMetricDimension {
                public static let method = "http.request.method"
                public static let urlScheme = "http.url.scheme"
                public static let route = "http.route"
            }
        }
    }
}
