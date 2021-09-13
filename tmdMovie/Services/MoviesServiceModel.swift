//
//  MoviesServiceModel.swift
//  tmdMovie
//
//  Created by Memo Figueredo on 13/9/21.
//

import Foundation


struct MoviesServiceModel : Codable {
//    let adult : Bool
    let backdrop_path : String
    let id: Int
    let original_language: String
    let original_title: String
    let overview: String
    let popularity: Float
    let poster_path: String
    let release_date: String
    let title: String
    let vote_average: Double
    let vote_count: Int
    
    static let database = DatabaseHandler.shared
    
    func store() {
        guard let movies = MoviesServiceModel.database.add(Movies.self) else {
            return
        }
        movies.backdrop_path = backdrop_path
        movies.id = Int32(id)
        movies.original_language = original_language
        movies.original_title = original_title
        movies.overview = overview
        movies.popularity = popularity
        movies.poster_path = poster_path
        movies.release_date = release_date
        movies.title = title
        movies.vote_average = vote_average
        movies.vote_count = Int32(vote_count)
        
        MoviesServiceModel.database.save()
    }
    
}
