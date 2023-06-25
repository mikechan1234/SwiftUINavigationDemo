//
//  ItemAListView.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import SwiftUI

struct ItemAListView: View {
    @StateObject var viewModel: ItemAListViewModel
    var body: some View {
        List(viewModel.listItems) { value in
            NavigationLink(value: ItemARoute.detail(value)) {
                ItemAListCell(viewModel: value)
            }
        }.navigationTitle("Item A")
    }
}

struct ItemAListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ItemAListView(viewModel: ItemAListViewModel())
        }
    }
}
