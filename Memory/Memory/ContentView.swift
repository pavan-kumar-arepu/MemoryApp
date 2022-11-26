//
//  ContentView.swift
//  Memory
//
//  Created by Pavankumar Arepu on 20/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(content: "🦜")
            CardView(content: "🚗")
            CardView(content: "🐱")
            CardView(content: "🐥")
        }
        .padding(.horizontal)
        .foregroundColor(.blue)
    }
}



struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 5.0)
            //let shape = Circle()
            if isFaceUp {
                shape.fill().foregroundColor(.green)
                shape.stroke(lineWidth: 4.0)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}














struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
