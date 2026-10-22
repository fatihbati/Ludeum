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
    GameCardView(
        game: Game(
            id: 1,
            name: "The Witcher 3: Wild Hunt",
            developer: "CD Projekt Red",
            releaseYear: 2015,
            rating: 93
        )
    )
}

#Preview("Puansız") {
    GameCardView(
        game: Game(
            id: 1,
            name: "Phantom Blade",
            developer: "S-GAME Studio",
            releaseYear: 2026,
            rating: nil
        )
    )
}
