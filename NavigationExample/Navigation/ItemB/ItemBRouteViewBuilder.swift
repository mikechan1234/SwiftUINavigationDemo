//
//  ItemBViewBuilder.swift
//  NavigationExample
//
//  Created by Michael Chan on 28/09/2023.
//

import Foundation
import SwiftUI

@MainActor
struct ItemBRouteViewBuilder {
    @ViewBuilder func makeRootView() -> some View {
        ItemBListView(items: ItemB.samples)
    }
    
    @ViewBuilder func makeView(for route: ItemBRoute) -> some View {
        switch route {
        case let .detail(item):
            ItemBDetailView(item: item)
        }
    }
}
