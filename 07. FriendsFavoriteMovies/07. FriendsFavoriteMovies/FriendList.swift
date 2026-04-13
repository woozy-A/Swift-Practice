import SwiftUI
import SwiftData

struct FriendList: View {
    @Query(sort: \Friend.name) private var friends: [Friend]
    @Environment(\.modelContext) private var context
    
    var body: some View {
        NavigationSplitView {
            List{
                ForEach(friends) { friend in
                    NavigationLink(friend.name) {
                        Text("Detal view for \(friend.name)")
                            .navigationTitle("Friend")
                            .navigationBarTitleDisplayMode(.inline)
                    }
                }
            }
            .navigationTitle(Text("Friends"))
        } detail: {
            Text("select a friend")
                .navigationTitle("Friend")
                .navigationBarTitleDisplayMode(.inline)
            
        }
       
        
    }
}

#Preview {
    FriendList()
        .modelContainer(SampleData.shared.modelContainer)
}
