//
//  ContentView.swift
//  Birthdays
//
//  Created by ycw012 on 4/13/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Query private var friends: [Friend]
    @Environment(\.modelContext) private var context
    
    @State private var newName: String = ""
    @State private var newDate = Date.now
    
    var body: some View {
        NavigationStack {
            List(friends) { friend in
                HStack{
                    if friend.isBirthdaytoday {
                        Image(systemName: "birthday.cake")
                    }
                    Text(friend.name)
                        .bold(friend.isBirthdaytoday)
                    Spacer()
                    Text(friend.birthday, format: .dateTime.month().day().year())
                }
                
            }
            
            .navigationTitle("Birthdays")
            .safeAreaInset(edge: .bottom) {
                VStack(alignment: .center, spacing: 20) {
                    Text("New Birthday")
                        .font(.headline)
                    DatePicker(selection: $newDate,
                               in: Date.distantPast...Date.now,
                               displayedComponents: .date
                    ) {
                        TextField("Name", text: $newName)
                            .textFieldStyle(.roundedBorder)
                    }
                    Button("Save") {
                        let newFriend = Friend(name: newName, birthday: newDate)
                        context.insert(newFriend)
                        
                        newName = ""
                        newDate = .now
                    }
                    .bold()
                    
                }
                
                .padding()
                .background(.bar)
                .background(Color.blue)
                
            }
//            .task {
//                context.insert(Friend(name: "woozy", birthday: .now))
//                context.insert(Friend(name: "no2", birthday: Date(timeIntervalSince1970: 0)))
//            }
            
        }
        
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Friend.self, inMemory: true)
}
