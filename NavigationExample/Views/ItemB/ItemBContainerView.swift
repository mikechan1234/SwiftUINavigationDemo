//
//  ItemBContainerView.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import SwiftUI

struct ItemBContainerView: View {
    @StateObject var navigator: ItemBNavigator
    var body: some View {
        NavigationStack(path: $navigator.path) {
            navigator.rootView()
            .navigationDestination(for: ItemBRoute.self) { route in
                navigator.view(for: route)
            }
        }.onOpenURL { url in
            navigator.handle(url: url)
        }
    }
}

struct ItemBContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ItemBContainerView(
            navigator: ItemBNavigator()
        )
    }
}
