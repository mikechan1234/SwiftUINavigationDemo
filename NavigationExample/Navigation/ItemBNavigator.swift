//
//  ItemBNavigator.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import SwiftUI

class ItemBNavigator: ObservableObject, Navigate {
    @Published var path: NavigationPath = NavigationPath()
    
    func pop() {
        path.removeLast()
    }
    
    func toRoot() {
        path.removeLast(path.count)
    }
    
    func handle(url: URL) {
        print("Printing in ItemBContainer")
    }
}

extension ItemBNavigator {
    @ViewBuilder func rootView() -> some View {
        ItemBListView(viewModel: ItemBListViewModel())
    }
    
    @ViewBuilder func view(for route: ItemBRoute) -> some View {
        switch route {
        case let .detail(viewModel):
            ItemBDetailView(
                viewModel: ItemBDetailViewModel(
                    cellViewModel: viewModel,
                    navigator: self
                )
            )
        }
    }
}
