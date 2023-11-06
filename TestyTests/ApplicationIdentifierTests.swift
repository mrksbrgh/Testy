//
//  ApplicationIdentifierTests.swift
//  TestyTests
//
//  Created by Markus Bergh on 2023-11-06.
//

import OHHTTPStubs
import OHHTTPStubsSwift
import XCTest
@testable import Testy

final class ApplicationIdentifierTests: XCTestCase {
  private var applicationIdentifier: ApplicationIdentifier!

  override func setUp() {
    super.setUp()

    applicationIdentifier = ApplicationIdentifier(version: Utilities.appVersion, debugMode: debug())
  }

  func testUserAgent() {
#if SWIFT_PACKAGE
    let userAgentPattern = #"^Testy-iOS\/[0-9]+\.[0-9]+-debug \((iPhone|iPad); (iOS|iPadOS) [0-9.]+\)$"#
#else
    let userAgentPattern = #"^Testy-iOS\/[0-9]+\.[0-9]+\.[0-9]+-debug \((iPhone|iPad); (iOS|iPadOS) [0-9.]+\)$"#
#endif

    XCTAssertNotNil(
      applicationIdentifier.userAgent.range(
        of: userAgentPattern,
        options: .regularExpression
      )
    )
  }
}