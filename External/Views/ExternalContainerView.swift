//
//  ExternalContainerView.swift
//  External
//
//  Created by Michael Chan on 25/06/2023.
//
//
import SwiftUI

public struct ExternalContainerView: View {
    @State var navigator = ExternalNavigator()
    let viewBuilder = ExternalRoute.InternalViewBuilder()
    let publicRouteViewBuilder: any ExternalPublicRouteViewBuildable
    
    public init(publicRouteViewBuilder: any ExternalPublicRouteViewBuildable) {
        self.publicRouteViewBuilder = publicRouteViewBuilder
    }
    
    public var body: some View {
        NavigationStack(path: $navigator.path) {
            viewBuilder.makeRootView()
            .navigationDestination(for: ExternalRoute.self) { route in
                viewBuilder.makeInternalRoute(for: route)
            }.navigationDestination(for: ExternalPublicRoute.self) { route in
                AnyView(publicRouteViewBuilder.makeView(for: route))
            }
        }.onOpenURL { url in
            navigator.handle(url: url)
        }.environment(navigator)
    }
}

struct ExternalContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ExternalContainerView(
            publicRouteViewBuilder: MockExternalPublicRouteViewBuildable()
        )
    }
}
