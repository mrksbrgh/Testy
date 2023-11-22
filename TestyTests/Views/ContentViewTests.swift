//
//  ContentViewTests.swift
//  TestyTests
//
//  Created by Markus Bergh on 2023-11-08.
//

import ViewInspector
import XCTest
@testable import Testy

final class ContentViewTests: XCTestCase {

  private var tracker: ContentViewTrackerMock!

  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.

    tracker = ContentViewTrackerMock()
  }

  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }

  func testContentViewTitleExists() throws {
    let view = ContentView(
      viewModel: ContentViewModel(
        tracker: tracker
      )
    )

    let expectation = view.inspection.inspect { view in
      XCTAssertNotNil(try view.find(text: "Testy"))
    }

    ViewHosting.host(view: view)

    wait(for: [expectation], timeout: 1.0)
  }

  func testContentViewTracking() throws {
    let view = ContentView(
      viewModel: ContentViewModel(
        tracker: tracker
      )
    )

    try view.inspect().vStack().callOnAppear()

    XCTAssertEqual(tracker.invocations.count, 1)
    XCTAssertEqual(tracker.invocations.first, "trackScreenContentView")

    // Find and tap on button
    let button = try view.inspect().find(button: "Action button")
    try button.tap()

    XCTAssertEqual(tracker.invocations.count, 2)
    XCTAssertEqual(tracker.invocations.last, "trackDidTapActionContentView")
  }
}

// MARK: - Mock

private final class ContentViewTrackerMock: ContentViewTracking {
  private(set) var invocations: [String] = []

  func trackScreen() {
    invocations.append("trackScreenContentView")
  }

  func trackDidTapAction() {
    invocations.append("trackDidTapActionContentView")
  }
}

extension Inspection: InspectionEmissary {}
