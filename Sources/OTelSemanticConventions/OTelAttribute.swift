/// This type provides access to OpenTelemetry attribute names. To use it, simply "dot-call" the desired attribute:
/// `OTelAttribute.http.response.statusCode`.
///
/// If using these names in spans, it may be more convenient to use the extensions on `SpanAttribute` itself.
public enum OTelAttribute {}
