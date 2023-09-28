//
//  ItemAListCell.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import SwiftUI

struct ItemAListCell: View {
    let item: ItemA
    var body: some View {
        HStack {
            Image(systemName: item.systemImageName)
            Text(item.title)
        }.padding(.vertical, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

struct ItemAListCell_Previews: PreviewProvider {
    static var previews: some View {
        ItemAListCell(
            item: .generate()
        )
    }
}
