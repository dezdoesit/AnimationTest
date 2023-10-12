//
//  ContentView.swift
//  AnimationTest
//
//  Created by dmoney on 10/11/23.
//

import SwiftUI
import EffectsLibrary

struct ContentView: View {
    var body: some View {
        Text("Animations in Swift!")
            .frame(minWidth: 100, minHeight: 100)
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding()
        ConfettiView()
            .padding()
    }
}

#Preview {
    ContentView()
}
