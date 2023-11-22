//
//  Inspection.swift
//  Testy
//
//  Created by Markus Bergh on 2023-11-22.
//

import Combine
import SwiftUI

internal final class Inspection<V> {
  let notice = PassthroughSubject<UInt, Never>()
  var callbacks: [UInt: (V) -> Void] = [:]

  func visit(_ view: V, _ line: UInt) {
    if let callback = callbacks.removeValue(forKey: line) {
      callback(view)
    }
  }
}
