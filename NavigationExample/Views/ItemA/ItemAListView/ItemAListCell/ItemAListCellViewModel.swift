//
//  ItemAListCellViewModel.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import Foundation

struct ItemAListCellViewModel: Identifiable, Hashable {
    let id: String
    let systemImageName: String
    let title: String
    
    init(item: ItemA) {
        id = item.id.uuidString
        systemImageName = item.systemImageName
        title = item.title
    }
}

extension ItemAListCellViewModel {
    static func generate() -> ItemAListCellViewModel {
        ItemAListCellViewModel(item: .generate())
    }
}
