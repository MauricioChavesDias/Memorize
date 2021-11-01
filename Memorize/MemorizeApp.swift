//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Mauricio Dias on 28/10/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
