//
//  Friend.swift
//  Birthdays
//
//  Created by ycw012 on 4/13/26.
//

import Foundation
import SwiftData

@Model
class Friend {
    var name: String
    var birthday: Date
    // Date 시간 초단위까지
    init(name: String, birthday: Date) {
        self.name = name
        self.birthday = birthday
    }
    
    var isBirthdaytoday: Bool {
        Calendar.current.isDateInToday(birthday)
    }
}
