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
#if SWIFT_PACKAGE
    let userAgentPattern = #"^Testy-iOS\/[0-9]+\.[0-9]+-debug \((iPhone|iPad); (iOS|iPadOS) [0-9.]+\)$"#
#else
    let userAgentPattern = #"^Testy-iOS\/[0-9]+\.[0-9]+\.[0-9]+-debug \((iPhone|iPad); (iOS|iPadOS) [0-9.]+\)$"#
#endif

    print("APPLICATION_IDENTIFIER_USER_AGENT", applicationIdentifier.userAgent)

    XCTAssertNotNil(
      applicationIdentifier.userAgent.range(
        of: userAgentPattern,
        options: .regularExpression
      )
    )
  }
}
