//
//  ExtDoubleToString.swift
//  tmdMovie
//
//  Created by Memo Figueredo on 14/9/21.
//

import Foundation

// MARK: Extension to convert to Double to String
extension Double {
    func toString() -> String {
        return String(format: "%.1f",self)
    }
}

// MARK: Extension to convert to float to String

extension Float {
    func toString() -> String {
        return String(format: "%.1f",self)
    }
}
