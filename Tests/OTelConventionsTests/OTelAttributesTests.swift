import OTelConventions
import Testing

struct OTelHttpAttributesTests {
    @Test func attributes() {
        #expect(OTelAttribute.http.response.statusCode == "http.response.status_code")
        // TODO: Re-enable this check when we have generated attributes that overlap with Swift keywords
        // #expect(OTelAttribute.error.type == "error.type") // Check Swift keywords (in this case, type)
    }
}
