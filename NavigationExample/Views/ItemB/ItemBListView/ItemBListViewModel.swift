//
//  ItemBListViewModel.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import Foundation

class ItemBListViewModel: ObservableObject {
    @Published var listItems: [ItemBListCellViewModel] = []
    init(items: [ItemB] = ItemB.samples) {
        listItems = items.map({ value in
            ItemBListCellViewModel(item: value)
        })
    }
}
