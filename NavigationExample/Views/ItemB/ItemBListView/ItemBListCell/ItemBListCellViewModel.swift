//
//  ItemBListCellViewModel.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import Foundation

struct ItemBListCellViewModel: Identifiable, Hashable {
    let id: String
    let title: String
    let description: String
    
    init(item: ItemB) {
        id = item.id.uuidString
        title = item.title
        description = item.description
    }
}

extension ItemBListCellViewModel {
    static func generate() -> ItemBListCellViewModel {
        ItemBListCellViewModel(item: .generate())
    }
}
