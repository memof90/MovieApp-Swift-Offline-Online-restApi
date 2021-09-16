//
//  MD5.swift
//  tmdMovie
//
//  Created by Memo Figueredo on 10/9/21.
//

import Foundation

import CryptoKit

// MARK: Extension to encrypt the api key
extension String {
    func md5() -> String {
        return Insecure.MD5.hash(data: self.data(using: .utf8)!).map { String(format: "%02hhx", $0)}.joined()
    }
}
