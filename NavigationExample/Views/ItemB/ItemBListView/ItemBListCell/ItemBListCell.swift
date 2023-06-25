//
//  ItemBListCell.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import SwiftUI

struct ItemBListCell: View {
    let viewModel: ItemBListCellViewModel
    var body: some View {
        VStack(alignment: .leading) {
            Text(viewModel.title).font(.headline)
            Text(viewModel.description).font(.body)
        }.padding(.vertical, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

struct ItemBListCell_Previews: PreviewProvider {
    static var previews: some View {
        ItemBListCell(viewModel: ItemBListCellViewModel(item: .generate()))
    }
}
