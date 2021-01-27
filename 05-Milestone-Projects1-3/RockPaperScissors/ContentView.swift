//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Nico Cobelo on 26/01/2021.
//

import SwiftUI

struct ContentView: View {
    var rps = ["👊", "✋", "✌️"]
    @State private var appsChoice = Int.random(in: 0...2)
    @State private var shouldWin = Bool.random()
    @State private var userScore = 0
    var body: some View {
        VStack {
            Text("Player's Score")
            Text("App's move")
            Text("Should I win or Lose?")
            HStack {
                ForEach(0 ..< 3) { number in
                    Button(action: {
                        //Action
                    }) {
                        Text(self.rps[number])
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
