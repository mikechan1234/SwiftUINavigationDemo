//
//  ItemBNavigator.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import SwiftUI
import OSLog

class ItemBNavigator: ObservableObject, Navigate {
    @Published var path: NavigationPath = NavigationPath()
    
    private let logger = Logger(
        subsystem: "com.Michael.NavigationExample",
        category: "ItemBNavigator"
    )
    
    func go(to route: ItemBRoute) {
        logger.log("Logging route")
        path.append(route)
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
