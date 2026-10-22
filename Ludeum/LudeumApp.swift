//
//  LudeumApp.swift
//  Ludeum
//
//  Created by Fatih Batı on 22.10.2026.
//

import SwiftUI             // C#'taki "using" gibi

@main                      // Uygulama buradan başlar (Program.Main'in karşılığı)
struct LudeumApp: App {    // App protocol'üne uyan bir struct
    var body: some Scene {
        WindowGroup {      // Ana pencere. iPhone'da tam ekran, iPad'de birden fazla pencere olabilir
            ContentView()  // Pencerenin içinde gösterilecek ilk ekran
        }
    }
}
