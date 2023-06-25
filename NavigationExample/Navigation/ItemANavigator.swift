//
//  ItemANavigator.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import SwiftUI

class ItemANavigator: ObservableObject, Navigate {
    @Published var path: NavigationPath = NavigationPath()
    
    func pop() {
        path.removeLast()
    }
    
    func toRoot() {
        path.removeLast(path.count)
    }
    
    func handle(url: URL) {
        print("Printing in ItemAContainer")
        guard url.host == "itemARoute"
        else {
            return
        }
        
        let pathComponents = url.pathComponents
        //Unwrap from URL to Routes
        
    }
}

extension ItemANavigator {
    @ViewBuilder func rootView() -> some View {
        ItemAListView(
            viewModel: ItemAListViewModel()
        )
    }
    
    @ViewBuilder func view(for route: ItemARoute) -> some View {
        switch route {
        case let .detail(viewModel):
            ItemADetailView(
                viewModel: ItemADetailViewModel(
                    cellViewModel: viewModel
                )
            )
        }
    }
}
