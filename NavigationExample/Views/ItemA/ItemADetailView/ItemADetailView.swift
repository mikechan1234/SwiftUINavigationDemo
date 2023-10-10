//
//  ItemADetailView.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import SwiftUI

struct ItemADetailView: View {
    @Environment(ItemADetailViewDidFinish.self) private var didFinish
    @Environment(\.dismiss) private var dismiss
    var item: ItemA
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
            Spacer()
            Image(systemName: item.systemImageName)
            Text(item.title)
            Spacer()
            Button("Did finish") {
                didFinish.value = true
                dismiss()
            }
            Spacer()
        }   
    }
}

struct ItemADetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ItemADetailView(item: .generate())
        }.environment(ItemADetailViewDidFinish())
    }
}
