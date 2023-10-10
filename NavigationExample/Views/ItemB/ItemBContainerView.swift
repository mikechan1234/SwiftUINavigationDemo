//
//  ItemBContainerView.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import SwiftUI

struct ItemBContainerView: View {
    @State var navigator = ItemBNavigator()
    let viewBuilder: ItemBRoute.ViewBuilder
    let publicRouteViewBuilder: ItemBPublicRoute.ViewBuilder
    
    @State var itemADetailViewDidFinish = ItemADetailViewDidFinish()
    
    var body: some View {
        NavigationStack(path: $navigator.path) {
            viewBuilder.makeRootView()
            .navigationDestination(for: ItemBRoute.self) { route in
                viewBuilder.makeView(for: route)
            }.navigationDestination(for: ItemBPublicRoute.self) { route in
                publicRouteViewBuilder.makeView(for: route)
            }
        }.onOpenURL { url in
            navigator.handle(url: url)
        }.environment(navigator)
        .environment(itemADetailViewDidFinish)
    }
}

struct ItemBContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ItemBContainerView( 
            viewBuilder: ItemBRoute.ViewBuilder(),
            publicRouteViewBuilder: ItemBPublicRoute.ViewBuilder()
        )
    }
}
