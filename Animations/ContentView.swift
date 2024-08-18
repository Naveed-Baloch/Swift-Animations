//
//  ContentView.swift
//  Animations
//
//  Created by Naveed on 18/08/2024.
//

import SwiftUI

struct ContentView: View {

    @State private var enabled = false
    var body: some View {
        Button("Tap Me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .blue : .red)
        .animation(.default, value: enabled)
        .foregroundStyle(.white)
        .clipShape(.rect(cornerRadius: enabled ? 60 : 30))
        .animation(.spring(duration: 1, bounce: 0.6), value: enabled)
    }
}

#Preview {
    ContentView()
}
