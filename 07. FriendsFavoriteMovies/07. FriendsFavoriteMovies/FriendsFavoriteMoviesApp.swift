//
//  _7__FriendsFavoriteMoviesApp.swift
//  07. FriendsFavoriteMovies
//
//  Created by ycw012 on 4/13/26.
//

import SwiftUI
import SwiftData

@main
struct FriendsFavoriteMoviesApp: App {
    @Environment(\.modelContext) private var context // 추가

    var body: some Scene {
        WindowGroup {
            ContentView()
            
        }
//        .modelContainer(SampleData.shared.modelContainer) // 이 줄 추가!
    }
}
