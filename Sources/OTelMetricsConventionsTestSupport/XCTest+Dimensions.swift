import XCTest

package func XCTAssertDimensionsEqual(
    _ lhs: [(String, String)],
    _ rhs: [String: String],
    file: StaticString = #filePath,
    line: UInt = #line
) {
    XCTAssertEqual(Dictionary(uniqueKeysWithValues: lhs), rhs, file: file, line: line)
}
