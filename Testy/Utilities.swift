//
//  Utilities.swift
//  Testy
//
//  Created by Markus Bergh on 2023-11-06.
//

import Foundation

enum Utilities {

  /// The build number of the application
  static var buildNumber: Int {
    if let version = Bundle.main.infoDictionary?["CFBundleVersion"] as? String {
      return Int(version) ?? 0
    }
    return 0
  }

  // The version string for the application
  static var appVersion: String {
    guard let version = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String else {
      fatalError("CFBundleShortVersionString is missing, should be set in the info dictionary.")
    }
    return version
  }

  static let applicationIdentifier: ApplicationIdentifier = {
    ApplicationIdentifier.create(version: appVersion, debugMode: debug())
  }()

  /*
  static func log(_ string: String) {
    Crashlytics.crashlytics().log("\(getVaList([string]))")
  }
  */
}
