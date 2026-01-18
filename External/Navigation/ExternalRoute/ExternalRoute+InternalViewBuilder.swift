//
//  ExternalRoute+ViewBuilder.swift
//  External
//
//  Created by Michael Chan on 28/09/2023.
//

import Foundation
import SwiftUI

@MainActor
extension ExternalRoute {
    struct InternalViewBuilder {
        @ViewBuilder
        func makeRootView() -> some View {
            ExternalListView(items: ExternalItem.samples)
        }
        
        @ViewBuilder
        func makeInternalRoute(for route: ExternalRoute) -> some View {
            switch route {
            case let .detail(item):
                ExternalDetailView(item: item)
            }
        }
    }
}
