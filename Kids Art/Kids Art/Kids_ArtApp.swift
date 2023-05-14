//
//  Kids_ArtApp.swift
//  Kids Art
//
//  Created by Francisca Ordaz on 08/05/23.
//

import SwiftUI

@main
struct Kids_ArtApp: App {
    @AppStorage ("isDarkMode") private var isDarkMode = false
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
