//
//  ContentView.swift
//  Testy
//
//  Created by Markus Bergh on 2023-08-21.
//

import SwiftUI

struct ContentView: View {
  @StateObject private var viewModel = ContentViewModel()

  var body: some View {
    VStack(spacing: 10) {
      HStack {
        Image(systemName: "globe")
          .imageScale(.large)
          .foregroundColor(.accentColor)

        Text("Hello, world!")
      }

      Divider()

      VStack(alignment: .leading){
        Text("This is the current text – \(viewModel.text)")
        TextField("Text", text: $viewModel.text)
      }
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
