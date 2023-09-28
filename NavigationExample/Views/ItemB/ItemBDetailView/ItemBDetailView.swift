//
//  ItemBDetailView.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import SwiftUI

struct ItemBDetailView: View {
    @Environment(ItemBNavigator.self) var navigator
    @State private var isPresentingModal: Bool = false
    var item: ItemB
    
    var body: some View {
        Form(content: {
            Section("Title") {
                Text(item.title)
            }
            Section("Description") {
                Text(item.description)
            }
            Section("Options") {
                Button("Add New") {
                    navigator.go(to: .detail(.generate()))
                }.padding(.vertical, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Button("Show Modal") {
                    isPresentingModal.toggle()
                }.padding(.vertical, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Button("Pop to Root") {
                    navigator.toRoot()
                }.padding(.vertical, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Button("Pop Once") {
                    navigator.pop()
                }.padding(.vertical, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }
        }).fullScreenCover(isPresented: $isPresentingModal) {
            FullScreenModalView()
        }
    }
}

struct ItemBDetailView_Previews: PreviewProvider {
    @State static var navigator = ItemBNavigator()
    static var previews: some View {
        NavigationStack(path: $navigator.path) {
            ItemBDetailView(
                item: .generate()
            ).environment(navigator)
        }
    }
}
