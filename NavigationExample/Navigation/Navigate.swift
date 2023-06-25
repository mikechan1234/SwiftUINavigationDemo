//
//  Navigator.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import Foundation
import SwiftUI

protocol Navigate {
    func toRoot()
    func pop()
    func handle(url: URL)
}
