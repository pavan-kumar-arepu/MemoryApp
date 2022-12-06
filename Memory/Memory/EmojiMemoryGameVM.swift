//
//  MemoryGameViewModel.swift
//  Memory
//
//  Created by Pavankumar Arepu on 01/12/22.
//

import Foundation


class EmojiMemoryGameVM {
    
    static let flagTheme = ["🇧🇴","🏁","🇮🇳", "🏳️‍⚧️","🇦🇺","🇧🇿","🇧🇯","🚩"]
    
    
    static func createMemoryGameModel() -> MemoryGameModel<String> {
        MemoryGameModel<String>(numberOfPairsOfCards: 4) { pairIndex in
            flagTheme[pairIndex]
        }
    }
    
    var model: MemoryGameModel<String> = createMemoryGameModel()
    
    var cards: Array<MemoryGameModel<String>.Card> {
        model.cards
    }
}

