//
//  ContentView.swift
//  Memory
//
//  Created by Pavankumar Arepu on 20/11/22.
//

import SwiftUI
  

struct ContentView: View {
    
    var emojis = ["🇧🇴","🏁","🇧🇧", "🏳️‍⚧️","🇦🇺","🇧🇿","🇧🇯","🚩","🏳️‍🌈","🇺🇳","🇦🇫"]
    
    @State var emojiCount  = 3
    var body: some View {
        VStack {
            HStack {
                ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                    CardView(content: emoji)
                }
            }
            
            HStack {
                Button {
                    emojiCount += 1
                } label: {
                    Text("Add Card")
                }
                Spacer()
                Button {
                    emojiCount -= 1
                } label: {
                    Text("Remove Card")
                }
            }.padding(.horizontal)
        }
       
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}



struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20.0)
            //let shape = Circle()
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3.0)
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
