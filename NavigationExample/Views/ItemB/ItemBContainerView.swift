//
//  ItemBContainerView.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import SwiftUI

struct ItemBContainerView: View {
    @StateObject var navigator = ItemBNavigator()
    let viewBuilder: ItemBRouteViewBuilder
    
    var body: some View {
        NavigationStack(path: $navigator.path) {
            viewBuilder.makeRootView()
                .navigationDestination(for: ItemBRoute.self) { route in
                    viewBuilder.makeView(for: route)
                }
        }.onOpenURL { url in
            navigator.handle(url: url)
        }.environmentObject(navigator)
    }
}

struct ItemBContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ItemBContainerView( 
            viewBuilder: ItemBRouteViewBuilder()
        )
    }
}
