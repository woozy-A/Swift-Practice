//
//  Scoreboard.swift
//  ScoreKeeper
//
//  Created by ycw012 on 4/13/26.
//

import Foundation

struct Scoreboard{
    var players: [Player] = [
     Player(name: "Chalski", score: 0),
     Player(name: "Gretzky", score: 0),
     Player(name: "jasmine", score: 0),
     Player(name: "Woozy", score: 0),
    ]
    
    var state = GameState.setup
    var doesHighScoreWin = true
    
    var winners: [Player] {
    guard state == .gameOver else { return [] }
    
        var winningScores = 0
        if doesHighScoreWin {
            winningScores = Int.min
            for player in players {
                winningScores = max(player.score, winningScores)
            }
            
        }else {
            winningScores = Int.max
            for player in players {
                winningScores = min(player.score, winningScores)
            }
            
        }
        
        return players.filter { Player in
            Player.score == winningScores
        }
    }
    
    mutating func resetscores(to newValue: Int) {
        for index in 0..<players.count {
            players[index].score = newValue
        }
    }
    
}
