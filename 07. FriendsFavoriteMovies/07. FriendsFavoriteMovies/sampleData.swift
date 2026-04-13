//
//  sampleData.swift
//  07. FriendsFavoriteMovies
//
//  Created by ycw012 on 4/14/26.
//

import Foundation
import SwiftData

@MainActor
class SampleData {
    static let shared = SampleData()
    let modelContainer: ModelContainer
    
    var context: ModelContext {
        modelContainer.mainContext
    }
    
    private init() {
        let schema = Schema([
            Friend.self,
            Movie.self,
            ])
        let modelConfigration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: true)
        do {
            modelContainer = try ModelContainer(for: schema, configurations: [modelConfigration])
            
        inserrtSampleData()
            
            try context.save()
        }
        catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }
private func inserrtSampleData() {
    for friend in Friend.sampleData {
        context.insert(friend)
    }
    
    for movie in Movie.sampleData {
        context.insert(movie)
    }
    }
    
    
}


