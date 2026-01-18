//
//  MockExternalPublicRouteViewBuildable.swift
//  External
//
//  Created by Michael Chan on 18/01/2026.
//

import SwiftUI

struct MockExternalPublicRouteViewBuildable: ExternalPublicRouteViewBuildable {
    @ViewBuilder
    func makeView(for route: ExternalPublicRoute) -> any View {
        Text("Item B Public Route View")
            .padding()
    }
}
