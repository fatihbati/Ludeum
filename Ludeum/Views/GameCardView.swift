//
//  GameCardView.swift
//  Ludeum
//
//  Created by Fatih Batı on 22.10.2026.
//

import SwiftUI

struct GameCardView: View {
    let game: Game

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(systemName: "gamecontroller.fill")
                .font(.system(size: 60))
                .foregroundStyle(.tint)
            Text(game.name)
                .font(.title)
                .bold()
            Text("\(game.developer) · \(String(game.releaseYear))")
                .font(.subheadline)
                .foregroundStyle(.secondary)
            if let rating = game.rating {
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundStyle(.yellow)
                    Text("\(rating)")
                }
            }
        }
        .padding()
    }
}

#Preview("Puanlı") {
    GameCardView(game: Game.samples[0])
}

#Preview("Puansız") {
    GameCardView(game: Game.samples[1])
}
