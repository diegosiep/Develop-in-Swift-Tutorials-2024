//
//  ContentView.swift
//  ChatPrototype
//
//  Created by Diego Sierra on 05/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 5) {
                Text("Knock, knock!")
                //            ".padding" modifier uses dot notation (just like any other modifier).
                
                    .padding()
                    .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 10)
                Text("Who's there?")
                    .colorInvert()
                    .padding()
                    .background(Color.teal, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 10)
                Text("La Vieja Inés")
                    .padding()
                    .background(Color.green, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 10)
                Text("Qué quiere?")
                    .colorInvert()
                    .padding()
                    .background(Color.red, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 10)
                Text("Nada, solamente estar feliz")
                    .colorInvert()
                    .padding()
                    .background(Color.accentColor, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 10)
                Text("Ah mira")
                    .padding()
                    .background(Color.orange, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 10)
                Text("I don't wanna talk honestly")
                    .colorInvert()
                    .padding()
                    .background(Color.gray, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 10)
                Text("Ok then, we won't talk")
                    .colorInvert()
                    .padding()
                    .background(Color.brown, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 10)
                Text("Ok fine we won't talk anymore")
                    .colorInvert()
                    .padding()
                    .background(Color.pink, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 10)
                Text("Okay then, whatever")
                    .colorInvert()
                    .padding()
                    .background(Color.mint, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 10)
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
