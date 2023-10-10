//
//  ItemBRoute+ViewBuilder.swift
//  NavigationExample
//
//  Created by Michael Chan on 28/09/2023.
//

import Foundation
import SwiftUI

@MainActor
extension ItemBRoute {
    struct ViewBuilder {
        @SwiftUI.ViewBuilder func makeRootView() -> some View {
            ItemBListView(items: ItemB.samples)
        }
        
        @SwiftUI.ViewBuilder func makeView(for route: ItemBRoute) -> some View {
            switch route {
            case let .detail(item):
                ItemBDetailView(item: item)
            }
        }
    }

}
