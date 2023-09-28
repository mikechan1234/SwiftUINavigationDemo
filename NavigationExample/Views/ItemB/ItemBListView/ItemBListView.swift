//
//  ItemBListView.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import SwiftUI

struct ItemBListView: View {
    var items: [ItemB]
    var body: some View {
        List(items) { value in
            NavigationLink(value: ItemBRoute.detail(value)) {
                ItemBListCell(item: value)
            }
        }.navigationTitle("Item B")
    }
}

struct ItemBListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ItemBListView(items: ItemB.samples)
        }
    }
}
