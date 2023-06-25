//
//  ItemADetailViewModel.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import Foundation

final class ItemADetailViewModel: ObservableObject {
    private let cellViewModel: ItemAListCellViewModel
    
    @Published var systemImageName: String
    @Published var title: String
    
    init(cellViewModel: ItemAListCellViewModel) {
        self.cellViewModel = cellViewModel
        self.systemImageName = cellViewModel.systemImageName
        self.title = cellViewModel.title
    }
}
