//
//  Video.swift
//  tmdMovie
//
//  Created by Memo Figueredo on 16/9/21.
//

import Foundation


struct ResultsVideo: Decodable {
    let id: Int
    let results: [ResultVideo]
}

struct ResultVideo: Decodable {
    let iso_639_1: String
    let iso_3166_1: String
    let name: String
    let key: String
    let site: String
    let type: String
    let id : String
}
