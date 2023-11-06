//
//  ApplicationIdentifier.swift
//  Testy
//
//  Created by Markus Bergh on 2023-11-06.
//

import UIKit

public class ApplicationIdentifier {
  let version: String
  let device: UIDevice
  let debugMode: Bool

  public init(
    version: String,
    device: UIDevice = UIDevice.current,
    debugMode: Bool = false
  ) {
    self.version = version
    self.device = device
    self.debugMode = debugMode
  }

  public var userAgent: String {
    "Testy-iOS/\(applicationVersionName) (\(device.model); \(device.systemName) \(device.systemVersion))"
  }
  
  public var applicationVersionName: String {
    debugMode ? "\(version)-debug" : version
  }

  public static func create(version: String,
                            device: UIDevice = UIDevice.current,
                            debugMode: Bool = false) -> ApplicationIdentifier {

    ApplicationIdentifier(version: version, device: device, debugMode: debugMode)
  }
}

public struct InstallIdentifier {
  public static var identifier: UUID? {
    UIDevice.current.identifierForVendor
  }
}

func debug() -> Bool {
    #if DEBUG || EXPERIMENT
        return true
    #else
        return false
    #endif
}
