//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Mauricio Dias on 29/10/21.
//  ViewModel

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["🎃", "👻", "🤡", "😸", "🐨", "🐸", "🐛", "🐈", "🦩", "🐼", "🐘" ,"🐶", "🦁", "🦧"]
    
    @Published private var model = createMemoryGame()
    
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    var cards: Array<Card> {
        return model.cards
    }
    
    
    //MARK: - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
}
