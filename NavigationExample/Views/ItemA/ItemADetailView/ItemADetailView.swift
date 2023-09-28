//
//  ItemADetailView.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import SwiftUI

struct ItemADetailView: View {
    var item: ItemA
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
            Spacer()
            Image(systemName: item.systemImageName)
            Text(item.title)
            Spacer()
        }.navigationTitle(item.title)
    }
}

struct ItemADetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ItemADetailView(item: .generate())
        }
    }
}
