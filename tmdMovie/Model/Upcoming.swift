//
//  Upcoming.swift
//  tmdMovie
//
//  Created by Memo Figueredo on 14/9/21.
//

import Foundation
import CoreData
//    MARK: - Model To objects to core Data
public class Upcomig: NSManagedObject {
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
