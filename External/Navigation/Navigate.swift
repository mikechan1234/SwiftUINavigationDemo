//
//  Navigate.swift
//  External
//
//  Created by Michael Chan on 10/10/2023.
//

import Foundation
import SwiftUI

protocol Navigate {
    func toRoot()
    func pop()
    func handle(url: URL)
}

