/// This type provides access to OpenTelemetry attribute names. To use it, simply "dot-call" the desired attribute:
/// `OTelAttribute.http.response.statusCode`.
///
/// If using these names in spans, the `OTelSpanConventions` package API may be more convenient, as it exposes these
/// attributes as extensions on `SpanAttribute` itself.
public enum OTelAttribute {}
