//
//  ContentViewModelTests.swift
//  TestyTests
//
//  Created by Markus Bergh on 2023-08-21.
//

import XCTest
@testable import Testy

final class ContentViewModelTests: XCTestCase {

  private var tracker: ContentViewTracking!

  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.

    tracker = ContentViewTrackerMock()
  }

  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }

  func testViewModel() {
    let viewModel = ContentViewModel(tracker: tracker)
    viewModel.text = "Testing"

    XCTAssertEqual(viewModel.text, "Testing")
  }
}

private final class ContentViewTrackerMock: ContentViewTracking {
  func trackScreen() {
    // Mock tracking
  }

  func trackDidTapAction() {
    // Mock tracking
  }
}
