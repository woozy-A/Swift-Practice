//
//  MovieList.swift
//  07. FriendsFavoriteMovies
//
//  Created by ycw012 on 4/14/26.
//

import SwiftUI
import SwiftData

struct MovieList: View {
    @Query(sort: \Movie.title) private var movies: [Movie]
    @Environment(\.modelContext) private var context
    
    
    var body: some View {
        NavigationSplitView {
            
            List {
                ForEach(movies) { movie in
                    NavigationLink(movie.title) {
                        Text("movie view for \(movie.title)")
                            .navigationTitle("movie")
                            .navigationBarTitleDisplayMode(.inline)
                    }
                }
            }
            .navigationTitle("Movies")
        }
        detail: {
            Text("selct a movie")
                .navigationTitle("movie")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    MovieList()
        .modelContainer(SampleData.shared.modelContainer)
}
