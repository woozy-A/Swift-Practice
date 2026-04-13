import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var context

    var body: some View {
        TabView {
            Tab("Friends", systemImage: "person.and.person") {
                FriendList()
            }
            Tab("Movies", systemImage: "film.stack") {
                MovieList()
            }
        }
       
    }
}


#Preview {
    ContentView()
        .modelContainer(SampleData.shared.modelContainer)
}
