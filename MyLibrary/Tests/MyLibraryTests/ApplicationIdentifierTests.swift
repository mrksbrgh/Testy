//
//  ApplicationIdentifierTests.swift
//  TestyTests
//
//  Created by Markus Bergh on 2023-11-06.
//

import OHHTTPStubs
import OHHTTPStubsSwift
import XCTest
@testable import MyLibrary

final class ApplicationIdentifierTests: XCTestCase {
  private var applicationIdentifier: ApplicationIdentifier!

  override func setUp() {
    super.setUp()

    applicationIdentifier = ApplicationIdentifier(version: Utilities.appVersion, debugMode: debug())
  }

  func testUserAgent() {
    let userAgentPattern = #"^Testy-iOS\/([0-9]+\.[0-9]+\.[0-9]|[0-9]+\.[0-9])+-debug \((iPhone|iPad); (iOS|iPadOS) [0-9.]+\)$"#

    XCTAssertNotNil(
      "Testy-iOS/15.0.1-debug (iPhone; iOS 16.4)".range(
        of: userAgentPattern,
        options: .regularExpression
      )
    )
  }
}
