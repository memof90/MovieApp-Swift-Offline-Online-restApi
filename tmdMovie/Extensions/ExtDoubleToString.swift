//
//  ExtDoubleToString.swift
//  tmdMovie
//
//  Created by Memo Figueredo on 14/9/21.
//

import Foundation


extension Double {
    func toString() -> String {
        return String(format: "%.1f",self)
    }
}

extension Float {
    func toString() -> String {
        return String(format: "%.1f",self)
    }
}
