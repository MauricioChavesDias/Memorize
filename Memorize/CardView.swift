//
//  CardView.swift
//  Memorize
//
//  Created by Mauricio Dias on 28/10/21.
//

import SwiftUI

struct CardView: View {
    let card: EmojiMemoryGame.Card
    @State private var angleDegrees: Double  = 0.0
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Pie(startAngle: Angle(degrees: 0-90), endAngle: Angle(degrees: 110-90))
                    .padding(4)
                    .opacity(0.5)
                
                Text(card.content)
                    .rotationEffect(Angle.degrees(angleDegrees))
                    .font(font(in: geometry.size))
                    .onAppear {
                        animationWithCard(isMatched: card.isMatched)
                    }
                    .onChange(of: card.isMatched) { cardIsMatched in
                        animationWithCard(isMatched: cardIsMatched)
                    }
            }
            .cardify(isFaceUp: card.isFaceUp)
        }
    }
    
    private func animationWithCard(isMatched: Bool) -> Void {
        withAnimation(.linear(duration: 1).repeatForever(autoreverses: false)) {
            angleDegrees = isMatched ? 360 : 0
        }
    }

    private func font(in size: CGSize) -> Font {
        Font.system(size: min(size.width, size.height) * DrawingConstants.fontScale)
    }
    
    private struct DrawingConstants {
        static let fontScale: CGFloat = 0.65
    }
    
}





struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: EmojiMemoryGame().cards.first!)
            .preferredColorScheme(.dark)
    }
}
