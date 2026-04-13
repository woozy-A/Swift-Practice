//
//  ScoreKeeperTests.swift
//  ScoreKeeperTests
//
//  Created by ycw012 on 4/13/26.
//

import Testing

@testable import ScoreKeeper


struct ScoreKeeperTests {

    @Test("Reset player scores", arguments: [0, 10, 20])
    func resetScores(to newValue: Int) async throws {
        var scoreboard = Scoreboard(players: [
            Player(name: "Chalski", score: 0),
            Player(name: "Gretzky", score: 0),
            Player(name: "jasmine", score: 0),
            Player(name: "Woozy", score: 5),
            
        ])
        await scoreboard.resetscores(to: newValue)
        
        for player in await scoreboard.players {
            #expect(player.score == newValue)
        }
    }
    
        @Test("Highest score wins")
            func highestScoreWins() {
                let scoreboard = Scoreboard(
                    players: [
                        Player(name: "Chalski", score: 0),
                        Player(name: "Gretzky", score: 0),
                        Player(name: "jasmine", score: 0),
                        Player(name: "Woozy", score: 5),
                        
                    ],
                    state: .gameOver,
                    doesHighScoreWin: true
                )
                
                let winners = scoreboard.winners
                #expect(winners == [Player(name: "Woozy", score: 5)])
                
            }
            
    @Test("Lowest score wins")
    func lowestScoreWins() {
    let scoreboard = Scoreboard(
            players: [
                Player(name: "Chalski", score: 0),
                Player(name: "Gretzky", score: 0),
                Player(name: "jasmine", score: 0),
                Player(name: "Woozy", score: 5),
                
            ],
            state: .gameOver,
            doesHighScoreWin: true
    )
        let winners = scoreboard.winners
        #expect(winners == [Player(name: "Woozy", score: 5)])
    }

        
    }


