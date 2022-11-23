//
//  ContentView.swift
//  Memory
//
//  Created by Pavankumar Arepu on 20/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello Pavan, Welcome to Swift UI World!")
                .fontWeight(.bold)
                .foregroundColor(Color.green)
                .multilineTextAlignment(.center)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
