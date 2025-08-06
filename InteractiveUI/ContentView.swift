//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 8/6/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    //@State private var name2 = ""
    // @State private var presentAlert = false
    @State private var textTitle = "What is your name?"
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.title)
            
            TextField("Type your name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            
            Button("Submit Name") {
                textTitle = "Welcome, \(name)!"
                name = ""
                // name2 = ""
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.mint)
        } // vstack end
        .padding()
    }
}

#Preview {
    ContentView()
}
