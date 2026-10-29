//
//  ContentView.swift
//  Ludeum
//
//  Created by Fatih Batı on 22.10.2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //NavigationStack, sayfalar arası geçişi ve geri butonunu yöneten kapsayıcı. Ekranların üst üste yığıldığı bir stack gibi düşünün: yeni ekran açılınca üste eklenir, geri basınca çıkarılır.
        NavigationStack {
            List(Game.samples) { game in
                NavigationLink {
                    GameDetailView(game: game)
                } label: {
                    GameCardView(game: game)
                }
            }
            .navigationTitle("Oyunlar")
        }
    }
}

#Preview {
    ContentView()
}
