import XCTest
@testable import LogTime

final class LogTimeTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(LogTime().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
