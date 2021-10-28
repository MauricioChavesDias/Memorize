//
//  CardView.swift
//  Memorize
//
//  Created by Mauricio Dias on 28/10/21.
//

import SwiftUI

struct CardView: View {
    //@State because the variable isFaceUp updates the UI.
    @State var isFaceUp: Bool = false
    var content: String
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20, style: .continuous)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(content: "🐤")
            .preferredColorScheme(.dark)
    }
}
