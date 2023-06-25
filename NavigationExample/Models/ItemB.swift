//
//  ItemC.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import Foundation

struct ItemB: Identifiable, Hashable, CustomStringConvertible {
    let id = UUID()
    let title: String
    let description: String
}

extension ItemB {
    static func generate() -> ItemB {
        ItemB(
            title: UUID().uuidString,
            description: .random(length: 500)
        )
    }
    
    static var samples: [ItemB] {
        [
            ItemB(title: "1st Item", description: "This is the first Item"),
            ItemB(title: "2nd Item", description: "This is the second Item"),
            ItemB(title: "3rd Item", description: "This is the third Item"),
            ItemB(title: "4th Item", description: "This is the fourth Item"),
            ItemB(title: "5th Item", description: "This is the fifth Item"),
            ItemB(title: "6th Item", description: "This is the sixth Item"),
            ItemB(title: "7th Item", description: "This is the seventh Item"),
            ItemB(title: "8th Item", description: "This is the eighth Item")
        ]
    }
}
