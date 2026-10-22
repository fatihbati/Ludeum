//
//  ContentView.swift
//  Ludeum
//
//  Created by Fatih Batı on 22.10.2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading,spacing:8) {
            Image(systemName: "gamecontroller.fill")
                .font(.system(size: 60))
                .foregroundStyle(.tint)
            Text("The Witcher 3: Wild Hunt")
                .font(.title)
                .bold()
            Text("CD Projekt Red · 2015")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                

            HStack {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
                Text("93")
            }
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
