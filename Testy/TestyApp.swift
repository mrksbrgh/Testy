//
//  TestyApp.swift
//  Testy
//
//  Created by Markus Bergh on 2023-08-21.
//

import SwiftUI

@main
struct TestyApp: App {
  private var name: String = "Name"
  private var address: String = "Address"
  private var phone: String = "Phone

  var body: some Scene {
    WindowGroup {
      ContentView(
        viewModel: ContentViewModel(
          tracker: ContentViewTracker()
        )
      )
    }
  }
}
