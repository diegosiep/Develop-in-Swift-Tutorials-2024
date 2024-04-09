//
//  ContentView.swift
//  MyselfInSixWords
//
//  Created by Diego Sierra on 09/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Hello, my name is Diego")
                        .colorInvert()
                        .padding()
                        .background(Color.red, in: RoundedRectangle(cornerRadius: 8))
                        .shadow(radius: 10)
                    Text("I LOVE playing the 🎹")
                        .padding()
                        .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8))
                        .shadow(radius: 10)
                }
                HStack {
                    Text("But I also have found a passion for developing iOS apps ")
                        .padding()
                        .background(Color.orange, in: RoundedRectangle(cornerRadius: 8))
                        .shadow(radius: 10)
                    
                    Text("I also like doing calisthenics for exercise")
                        .colorInvert()
                        .padding()
                        .background(Color.brown, in: RoundedRectangle(cornerRadius: 8))
                        .shadow(radius: 10)
                }
                Text("I am currently looking for an iOS developer job")
                    .colorInvert()
                    .padding()
                    .background(Color.cyan, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 10)
                Text("I have a maltese dog, whose name is Oliver")
                    .colorInvert()
                    .padding()
                    .background(Color.mint, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 10)
            }
        }
        .padding(5)
    }
}

#Preview {
    ContentView()
}
