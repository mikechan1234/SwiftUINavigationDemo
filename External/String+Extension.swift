//
//  String+Extension.swift
//  External
//
//  Created by Michael Chan on 25/06/2023.
//

import Foundation

extension String {
    static func random(length: Int) -> String {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        return String((0..<length).map{ _ in letters.randomElement()! })
    }
}
