//
//  ItemA.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import Foundation

struct ItemA: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let systemImageName: String
}

extension ItemA {
    static func generate() -> ItemA {
        ItemA(title: "Generated Title", systemImageName: "questionmark.circle")
    }
    
    static var samples: [ItemA] {
        [
            ItemA(title: "Tools", systemImageName: "pencil.tip"),
            ItemA(title: "Nature", systemImageName: "globe.europe.africa"),
            ItemA(title: "Health", systemImageName: "heart"),
            ItemA(title: "Shapes", systemImageName: "circle")
        ]
    }
}
