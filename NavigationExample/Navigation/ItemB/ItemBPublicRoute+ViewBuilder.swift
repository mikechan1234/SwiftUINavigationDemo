//
//  ItemBPublicRoute+ViewBuilder.swift
//  NavigationExample
//
//  Created by Michael Chan on 28/09/2023.
//

import Foundation
import SwiftUI

extension ItemBPublicRoute {
    struct ViewBuilder {
        @SwiftUI.ViewBuilder func makeView(for route: ItemBPublicRoute) -> some View {
            switch route {
            case let .details(itemA):
                ItemADetailView(item: itemA)
            }
        }
    }
}
