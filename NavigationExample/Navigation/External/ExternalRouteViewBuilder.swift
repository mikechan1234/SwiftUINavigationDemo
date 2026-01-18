//
//  ExternalRouteViewBuilder.swift
//  NavigationExample
//
//  Created by Michael Chan on 18/01/2026.
//

import Foundation
import External
import SwiftUI

struct ExternalRouteViewBuilder: ExternalPublicRouteViewBuildable {
    func makeView(for route: ExternalPublicRoute) -> any View {
        switch route {
            case .details:
                Text("External Route injected from App")
        }
    }
}
