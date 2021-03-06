import XCTest
@testable import MastodonKit

class NotificationTypeTests: XCTestCase {
    func testMention() {
        XCTAssertEqual(NotificationType(string: "mention"), NotificationType.mention)
    }

    func testReblog() {
        XCTAssertEqual(NotificationType(string: "reblog"), NotificationType.reblog)
    }

    func testFavourite() {
        XCTAssertEqual(NotificationType(string: "favourite"), NotificationType.favourite)
    }

    func testFollow() {
        XCTAssertEqual(NotificationType(string: "follow"), NotificationType.follow)
    }

    func testUnknown() {
        XCTAssertEqual(NotificationType(string: "foobar"), NotificationType.unknown)
    }
}
