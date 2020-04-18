@testable import Preparable
import XCTest

final class PreparableTests: XCTestCase {
    func testPreparableObject() {
        let mock = Mock(count: 0)
        XCTAssertEqual(mock.count, 0)
        mock
            .then {
                $0.count = 100
            }
        XCTAssertEqual(mock.count, 100)
    }

    static var allTests = [
        ("testPreparableObject", testPreparableObject)
    ]
}
