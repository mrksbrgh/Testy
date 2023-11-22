//
//  ContentView.swift
//  Testy
//
//  Created by Markus Bergh on 2023-08-21.
//

import SwiftUI

struct ContentView: View {
  @Environment(\.horizontalSizeClass) var sizeClass
  @ObservedObject var viewModel: ContentViewModel

  var body: some View {
    NavigationView {
      VStack(spacing: 8) {
        HStack {
          Image(systemName: "globe")
            .imageScale(.large)
            .foregroundColor(.accentColor)
          
          Text("Testy")
        }
        
        Button(action: {
          viewModel.didTapAction()
        }, label: {
          Text("Action button")
        })
      }
      .padding(sizeClass == .compact ? 16.0 : 32.0)
      .onAppear {
        viewModel.didAppear()
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(
      viewModel: ContentViewModel(
        tracker: ContentViewTracker()
      )
    )
  }
}
