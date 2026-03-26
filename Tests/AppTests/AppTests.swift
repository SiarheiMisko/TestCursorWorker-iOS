import XCTest
@testable import App
import Vapor
import XCTVapor

final class AppTests: XCTestCase {
    func testIndexPageContainsGreeting() throws {
        let app = try Application(.testing)
        defer { app.shutdown() }

        try configure(app)

        try app.test(.GET, "/") { response in
            XCTAssertEqual(response.status, .ok)
            XCTAssertEqual(response.headers.contentType, .html)
            XCTAssertTrue(response.body.string.contains("С запуском"))
            XCTAssertTrue(response.body.string.contains("Vapor"))
        }
    }
}
