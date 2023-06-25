//
//  ItemAListViewModel.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import Foundation

class ItemAListViewModel: ObservableObject  {
    @Published var listItems: [ItemAListCellViewModel] = []
    
    init(items: [ItemA] = ItemA.samples) {
        listItems = items.map { value in
            ItemAListCellViewModel(item: value)
        }
    }
}
