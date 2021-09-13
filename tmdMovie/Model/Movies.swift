//
//  Movies.swift
//  tmdMovie
//
//  Created by Memo Figueredo on 11/9/21.
//

import Foundation
import CoreData

public class Movies: NSManagedObject {
//    @NSManaged var adult : Bool
    @NSManaged var backdrop_path : String
    @NSManaged var id : Int32
    @NSManaged var original_language : String
    @NSManaged var original_title: String
    @NSManaged var overview : String
    @NSManaged var popularity: Float
    @NSManaged var poster_path: String
    @NSManaged var release_date: String
    @NSManaged var title : String
    @NSManaged var vote_average: Double
    @NSManaged var vote_count: Int32
}
