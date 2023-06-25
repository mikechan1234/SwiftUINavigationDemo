//
//  ItemADetailView.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import SwiftUI

struct ItemADetailView: View {
    @StateObject var viewModel: ItemADetailViewModel
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
            Spacer()
            Image(systemName: viewModel.systemImageName)
            Text(viewModel.title)
            Spacer()
//            NavigationLink(value: ProductListRoute.details(.generate())) {
//                Text("Show Product")
//            }
//            Button("Pop") {
//                viewModel.pop()
//            }
            Spacer()
        }.navigationTitle(viewModel.title)
    }
}

struct ItemADetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ItemADetailView(
                viewModel: ItemADetailViewModel(
                    cellViewModel: .generate()
                )
            )
        }
    }
}
