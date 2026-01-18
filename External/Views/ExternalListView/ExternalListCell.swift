//
//  ExternalListCell.swift
//  External
//
//  Created by Michael Chan on 25/06/2023.
//

import SwiftUI

struct ExternalListCell: View {
    let item: ExternalItem
    var body: some View {
        VStack(alignment: .leading) {
            Text(item.title).font(.headline)
            Text(item.description).font(.body)
        }.padding(.vertical, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

struct ItemBListCell_Previews: PreviewProvider {
    static var previews: some View {
        ExternalListCell(item: .generate())
    }
}
