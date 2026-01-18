//
//  ExternalNavigator.swift
//  External
//
//  Created by Michael Chan on 25/06/2023.
//

import SwiftUI
import Observation
import OSLog

@Observable
class ExternalNavigator: Navigate {
    var path: NavigationPath = NavigationPath()
    
    private let logger = Logger(
        subsystem: "com.Michael.NavigationExample",
        category: "ExternalNavigator"
    )
    
    func go(to route: ExternalRoute) {
        logger.log("Going to route")
        path.append(route)
    }

    func go(to publicRoute: ExternalPublicRoute) {
        logger.log("Going to public route")
        path.append(publicRoute)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func toRoot() {
        path.removeLast(path.count)
    }
    
    func handle(url: URL) {
//        let components = url.pathComponents
        print("Printing in ItemBContainer")
    }
}
