//
//  ItemBDetailViewModel.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import Foundation

class ItemBDetailViewModel: ObservableObject {
    private let navigator: ItemBNavigator
    let title: String
    let description: String
    @Published var isPresentingModal = false
    init(cellViewModel: ItemBListCellViewModel, navigator: ItemBNavigator) {
        title = cellViewModel.title
        description = cellViewModel.description
        self.navigator = navigator
    }
}

extension ItemBDetailViewModel {
    func show() {
        navigator.path.append(ItemBRoute.detail(
            ItemBListCellViewModel(item: ItemB.generate())
        ))
    }
    func pop() {
        navigator.pop()
    }
    
    func poptoRoot() {
        navigator.toRoot()
    }
}
