//
//  ItemADetailViewDidFinish.swift
//  NavigationExample
//
//  Created by Michael Chan on 30/09/2023.
//

import Foundation
import Observation

@Observable
class ItemADetailViewDidFinish: Equatable {
    var value: Bool = false
    
    func reset() {
        value = false
    }
}

extension ItemADetailViewDidFinish {
    static func == (lhs: ItemADetailViewDidFinish, rhs: ItemADetailViewDidFinish) -> Bool {
        lhs.value == rhs.value
    }
}
