//
//  ExternalItem.swift
//  External
//
//  Created by Michael Chan on 25/06/2023.
//

import Foundation

public struct ExternalItem: Identifiable, Hashable, CustomStringConvertible {
    public let id = UUID()
    public let title: String
    public let description: String
}

public extension ExternalItem {
    static func generate() -> ExternalItem {
        ExternalItem(
            title: UUID().uuidString,
            description: .random(length: 500)
        )
    }
    
    static var samples: [ExternalItem] {
        [
            ExternalItem(title: "1st Item", description: "This is the first Item"),
            ExternalItem(title: "2nd Item", description: "This is the second Item"),
            ExternalItem(title: "3rd Item", description: "This is the third Item"),
            ExternalItem(title: "4th Item", description: "This is the fourth Item"),
            ExternalItem(title: "5th Item", description: "This is the fifth Item"),
            ExternalItem(title: "6th Item", description: "This is the sixth Item"),
            ExternalItem(title: "7th Item", description: "This is the seventh Item"),
            ExternalItem(title: "8th Item", description: "This is the eighth Item")
        ]
    }
}
