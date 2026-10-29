//
//  ContentView.swift
//  Ludeum
//
//  Created by Fatih Batı on 22.10.2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(Game.samples) { game in
            GameCardView(game: game)
        }
    }
}

#Preview {
    ContentView()
}
