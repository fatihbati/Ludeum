//
//  GameDetailView.swift
//  Ludeum
//
//  Created by Fatih Batı on 29.10.2026.
//

import SwiftUI

struct GameDetailView: View {
    let game: Game

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(systemName: "gamecontroller.fill")
                    .font(.system(size: 120))
                    .foregroundStyle(.tint)
                    .frame(maxWidth: .infinity)
                Text(game.name)
                    .font(.largeTitle)
                    .bold()
                Text(game.developer)
                    .font(.title3)
                    .foregroundStyle(.secondary)
                Text("Çıkış Yılı: \(String(game.releaseYear))")
                if let rating = game.rating {
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                        Text("\(rating) / 100")
                    }
                } else {
                    Text("Henüz Puan Yok")
                }
            }
            .padding()
        }
    }
}

#Preview {
    GameDetailView(game: Game.samples[0])
}
