//
//  ExternalPublicRoute.swift
//  External
//
//  Created by Michael Chan on 18/01/2026.
//

import SwiftUI

public enum ExternalPublicRoute: Hashable {
    case details
}

public protocol ExternalPublicRouteViewBuildable {
    func makeView(for route: ExternalPublicRoute) -> any View
}
