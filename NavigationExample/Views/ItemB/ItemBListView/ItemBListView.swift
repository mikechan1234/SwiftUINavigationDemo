//
//  ItemBListView.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import SwiftUI

struct ItemBListView: View {
    @Environment(ItemADetailViewDidFinish.self) var itemADetailViewDidFinish
    @State private var isPresentingAlert: Bool = false
    
    var items: [ItemB]
    var body: some View {
        VStack(spacing: 10) {
            if isPresentingAlert {
                Text("Did finish public route")
                    .padding(10)
            }
            List(items) { value in
                NavigationLink(value: ItemBRoute.detail(value)) {
                    ItemBListCell(item: value)
                }
            }
        }
        .navigationTitle("Item B")
        .onChange(of: itemADetailViewDidFinish.value) {
            isPresentingAlert = itemADetailViewDidFinish.value
        }.onDisappear {
            itemADetailViewDidFinish.value = false 
        }
    }
}

struct ItemBListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ItemBListView(items: ItemB.samples)
        }
    }
}
