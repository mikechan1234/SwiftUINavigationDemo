//
//  TabContainer.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import SwiftUI

struct TabContainer: View {
    @StateObject var itemANavigator = ItemANavigator()
    
    var body: some View {
        TabView {
            ItemAContainerView(
                navigator: itemANavigator
            ).tabItem {
                Label("Item A", systemImage: "shippingbox")
            }
            ItemBContainerView(
                viewBuilder: ItemBRouteViewBuilder()
            ).tabItem {
                Label("Item B", systemImage: "command")
            }
        }
    }
}

struct TabContainer_Preview: PreviewProvider {
    static var previews: some View {
        TabContainer()
            .previewDevice(.init(stringLiteral: "iPhone 11 Pro"))
    }
}
