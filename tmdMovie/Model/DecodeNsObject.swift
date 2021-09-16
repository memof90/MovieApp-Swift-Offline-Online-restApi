//
//  Popular.swift
//  tmdMovie
//
//  Created by Memo Figueredo on 10/9/21.
//

import Foundation
import CoreData
import UIKit

let appDelegate = UIApplication.shared.delegate as? AppDelegate
let myPersisterContainer =  appDelegate?.persistentContainer

struct ResultsPopular : Decodable {
    let results : [Movie]
}



public class Movie: NSManagedObject, Decodable {
    enum DecoderConfigurationError: Error {
      case missingManagedObjectContext
    }
    enum CodingKeys: CodingKey {
        case id, backdrop_path, original_language, original_title, overview, popularity,poster_path,release_date, title, vote_average, vote_count
      }
    
    
    required convenience public init(from decoder: Decoder) throws {
        guard let context = decoder.userInfo[CodingUserInfoKey.managedObject]  as? NSManagedObjectContext else {
            throw DecoderConfigurationError.missingManagedObjectContext
        }
        self.init(context: context)
     
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int32.self, forKey: .id)
        self.backdrop_path = try container.decode(String.self, forKey: .backdrop_path)
        self.original_language = try container.decode(String.self, forKey: .original_language)
        self.original_title = try container.decode(String.self, forKey: .original_title)
        self.overview = try container.decode(String.self, forKey: .overview)
        self.popularity = try container.decode(Float.self, forKey: .popularity)
        self.poster_path = try container.decode(String.self, forKey: .poster_path)
        self.release_date = try container.decode(String.self, forKey: .release_date)
        self.title = try container.decode(String.self, forKey: .title)
        self.vote_average = try container.decode(Double.self, forKey: .vote_average)
        self.vote_count = try container.decode(Int32.self, forKey: .vote_count)
     }
  
    
}

extension CodingUserInfoKey {
    static let managedObject = CodingUserInfoKey(rawValue: "managedObjectContext")!
}
//extension Movie: Decodable {
//    public required init(from decoder: Decoder) throws {
//        <#code#>
//    }
//
//
//}
