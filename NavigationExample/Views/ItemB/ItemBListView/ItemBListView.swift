//
//  ItemBListView.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import SwiftUI

struct ItemBListView: View {
    @StateObject var viewModel: ItemBListViewModel
    var body: some View {
        List(viewModel.listItems) { value in
            NavigationLink(value: ItemBRoute.detail(value)) {
                ItemBListCell(viewModel: value)
            }
        }.navigationTitle("Item B")
    }
}

struct ItemBListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ItemBListView(viewModel: ItemBListViewModel())
        }
    }
}
