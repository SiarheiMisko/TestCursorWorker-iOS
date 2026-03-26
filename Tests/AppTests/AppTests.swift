import XCTest
@testable import App
import Vapor
import XCTVapor

final class AppTests: XCTestCase {
    func testIndexPageContainsGreeting() async throws {
        let app = try await Application.make(.testing)
        do {
            try configure(app)

            try await app.testable().test(.GET, "/") { response async in
                XCTAssertEqual(response.status, .ok)
                XCTAssertEqual(response.headers.contentType, .html)
                XCTAssertTrue(response.body.string.contains("С запуском"))
                XCTAssertTrue(response.body.string.contains("Vapor"))
            }

            try await app.asyncShutdown()
        } catch {
            try await app.asyncShutdown()
            throw error
        }
    }
}
