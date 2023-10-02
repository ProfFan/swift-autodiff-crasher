import XCTest
import _Differentiation

@testable import NeueOpt

final class NeueOptTests: XCTestCase {
  func testExample() throws {
    let v1 = Vector2.zero
    let v2 = Vector2(1.0, 2.0)

    XCTAssertEqual(v1, v2 - v2)

    let grad_x = gradient(of: { (x: Vector2) in x.squaredNorm })(v2)

    XCTAssertEqual(grad_x, Vector2(2.0, 4.0))
  }
}
