//
//  Game.swift
//  Ludeum
//
//  Created by Fatih Batı on 22.10.2026.
//

import Foundation

struct Game: Identifiable {
    let id: Int
    let name: String
    let developer: String
    let releaseYear: Int
    let rating: Int?
}

/*
- extension: var olan bir tipe yeni üyeler ekler. C#'taki partial class'a benziyor.
- static let: tipe ait bir sabit, C#'taki public static readonly gibi. Game.samples diye erişilir.
- [Game]: Game dizisi, C#'taki List<Game> ya da Game[] gibi.
*/
extension Game {
    static let samples: [Game] = [
        Game(
            id: 1,
            name: "The Witcher 3: Wild Hunt",
            developer: "CD Projekt Red",
            releaseYear: 2015,
            rating: 93
        ),
        Game(
            id: 2,
            name: "Phantom Blade",
            developer: "S-GAME Studio",
            releaseYear: 2026,
            rating: nil
        ),
        Game(
            id: 3,
            name: "Black Myth: Wukong",
            developer: "Game Science",
            releaseYear: 2024,
            rating: 81
        ),
        Game(
            id: 4,
            name: "Elden Ring",
            developer: "FromSoftware",
            releaseYear: 2022,
            rating: 96
        ),
        Game(
            id: 5,
            name: "The Legend of Zelda: Tears of the Kingdom",
            developer: "Nintendo",
            releaseYear: 2023,
            rating: 95
        ),
    ]
}
