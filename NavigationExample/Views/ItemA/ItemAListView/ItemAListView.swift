//
//  ItemAListView.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import SwiftUI

struct ItemAListView: View {
    var items: [ItemA]
    var body: some View {
        List(items) { value in
            NavigationLink(value: ItemARoute.detail(value)) {
                ItemAListCell(item: value)
            }
        }.navigationTitle("Item A")
    }
}

struct ItemAListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ItemAListView(items: [.generate(), .generate()])
        }
    }
}
