//
//  ContentViewModel.swift
//  Testy
//
//  Created by Markus Bergh on 2023-09-20.
//

import Foundation

final class ContentViewModel: ObservableObject {
  @Published var text: String = ""

  private let tracker: ContentViewTracking

  init(tracker: ContentViewTracking) {
    self.tracker = tracker
  }
}

// MARK: - View cycle

extension ContentViewModel {
  func didAppear() {
    tracker.trackScreen()
  }
}

// MARK: - Action

extension ContentViewModel {
  func didTapAction() {
    tracker.trackDidTapAction()
  }
}
