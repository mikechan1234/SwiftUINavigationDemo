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
        Text("External Public Route View from Mock")
            .padding()
    }
}
