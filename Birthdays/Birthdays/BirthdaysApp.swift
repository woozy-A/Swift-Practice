//
//  BirthdaysApp.swift
//  Birthdays
//
//  Created by ycw012 on 4/13/26.
//

import SwiftUI
import SwiftData

@main
struct BirthdaysApp: App {
    
    var body: some Scene {
  
        WindowGroup {
            ContentView()
                .modelContainer(for: Friend.self)
            
        }
    }
}
