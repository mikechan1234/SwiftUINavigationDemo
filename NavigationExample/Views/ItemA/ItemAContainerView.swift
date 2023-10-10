//
//  ItemAContainerView.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import SwiftUI

struct ItemAContainerView: View {
    @ObservedObject var navigator: ItemANavigator
    @State var itemADetailViewDidFinish = ItemADetailViewDidFinish()
    
    var body: some View {
        NavigationStack(path: $navigator.path) {
            navigator.rootView()
            .navigationDestination(for: ItemARoute.self) { route in
                navigator.view(for: route)
            }
        }.onOpenURL { url in
            navigator.handle(url: url)
        }.environment(itemADetailViewDidFinish)
    }
}

struct ItemAContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ItemAContainerView(
            navigator: ItemANavigator()
        )
    }
}
