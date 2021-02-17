//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Nico Cobelo on 26/01/2021.
//

import SwiftUI

struct ContentView: View {
    @State var rockPaperScissors = ["👊", "✋", "✌️"]
    @State private var appsChoice = Int.random(in: 0...2)
    
    @State private var shouldWin = Bool.random()
    var result: String {
        if shouldWin {
            return "win"
        } else {
            return "lose"
        }
    }
    @State private var userScore = 0
    var body: some View {
        VStack {
            Text("App's choice")
            Text(rockPaperScissors[appsChoice])
                .font(.system(size: 90))
            Text("How to \(result) the game?")
                .padding()
            HStack {
                ForEach(0 ..< 3) { number in
                    Button(action: {
                        buttonTapped(number)
                    }) {
                        Text(self.rockPaperScissors[number])
                            .font(.system(size: 50))
                            .padding()
                    }
                }
            }
            Text("Score \(userScore)")
        }
    }
    
    func buttonTapped(_ number: Int) {
        if shouldWin {
            if number == (appsChoice + 1) {
                userScore += 1
            } else {
                userScore -= 1
            }
        } else {
            if number == (appsChoice - 1) {
                userScore += 1
            } else {
                userScore -= 1
            }
        }
        appsChoice = Int.random(in: 0...2)
        shouldWin = Bool.random()
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
