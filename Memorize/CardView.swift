//
//  CardView.swift
//  Memorize
//
//  Created by Mauricio Dias on 28/10/21.
//

import SwiftUI

struct CardView: View {
    let card: EmojiMemoryGame.Card
     
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                let shape = RoundedRectangle(cornerRadius: DrawingConstants.cornerRadius, style: .continuous)
                if card.isFaceUp {
                    shape.fill().foregroundColor(.white)
                    shape.strokeBorder(lineWidth: DrawingConstants.lineWidth)
                    Text(card.content).font(font(in: geometry.size))
                } else if card.isMatched {
                    shape.opacity(0)
                } else {
                    shape.fill()
                }
            }
        }
    }
    
    private struct DrawingConstants {
        static let cornerRadius: CGFloat = 20
        static let lineWidth: CGFloat = 3
        static let fontScale: CGFloat = 0.8
    }
    
    private func font(in size: CGSize) -> Font {
        Font.system(size: min(size.width, size.height) * DrawingConstants.fontScale)
    }
}





struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: EmojiMemoryGame().cards.first!)
            .preferredColorScheme(.dark)
    }
}
