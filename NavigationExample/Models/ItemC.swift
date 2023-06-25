//
//  ItemB.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import Foundation

struct ItemC: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let imageName: String
}

extension ItemC {
    static func generate() -> ItemC {
        ItemC(name: "Space", imageName: "space")
    }
    
    static var sample: [ItemC] {
        [
            ItemC(name: "Command", imageName: "command.circle"),
            ItemC(name: "Space", imageName: "space"),
            ItemC(name: "Option", imageName: "option"),
            ItemC(name: "Alt", imageName: "alt")
        ]
    }
}
