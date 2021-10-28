//
//  ContentView.swift
//  Memorize
//
//  Created by Mauricio Dias on 28/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 24.0, style: .continuous)
                .stroke(lineWidth: 3)
            Text("Hello Swift")
        }
        .padding(.horizontal)
        .foregroundColor(.red)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
