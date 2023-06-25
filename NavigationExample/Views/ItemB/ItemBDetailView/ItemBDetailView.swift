//
//  ItemBDetailView.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import SwiftUI

struct ItemBDetailView: View {
    @ObservedObject var viewModel: ItemBDetailViewModel
    var body: some View {
        Form(content: {
            Section("Title") {
                Text(viewModel.title)
            }
            Section("Description") {
                Text(viewModel.description)
            }
            Section("Options") {
                Button("Add New") {
                    viewModel.show()
                }.padding(.vertical, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Button("Show Modal") {
                    viewModel.isPresentingModal.toggle()
                }.padding(.vertical, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Button("Pop to Root") {
                    viewModel.poptoRoot()
                }.padding(.vertical, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Button("Pop Once") {
                    viewModel.pop()
                }.padding(.vertical, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }
        }).fullScreenCover(isPresented: $viewModel.isPresentingModal) {
            FullScreenModalView()
        }
    }
}

struct ItemBDetailView_Previews: PreviewProvider {
    @ObservedObject static var navigator = ItemBNavigator()
    static var previews: some View {
        NavigationStack(path: $navigator.path) {
            ItemBDetailView(
                viewModel: ItemBDetailViewModel(
                    cellViewModel: .generate(),
                    navigator: navigator
                )
            )
        }
    }
}
