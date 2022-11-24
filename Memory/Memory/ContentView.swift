//
//  ContentView.swift
//  Memory
//
//  Created by Pavankumar Arepu on 20/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // ZStack will combine other views, ViewBuilder
        ZStack(content: {
            RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 4.0)

            Text("Hello Pavan!")
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
        })
        .padding()
        .foregroundColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
    }
}









struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
