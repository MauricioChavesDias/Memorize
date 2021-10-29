//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Mauricio Dias on 29/10/21.
//  ViewModel

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    static let emojis = ["🎃", "👻", "🤡", "😸", "🐨", "🐸", "🐛", "🐈", "🦩", "🐼", "🐘" ,"🐶", "🦁", "🦧"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    
    //MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
