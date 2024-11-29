package protocol OTelSemanticMetric {
    static var label: String { get }
    associatedtype Dimension: OTelSemanticMetricDimension
}

package protocol OTelSemanticMetricDimension {}
