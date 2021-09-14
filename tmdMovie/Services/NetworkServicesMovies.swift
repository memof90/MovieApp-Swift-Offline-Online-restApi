//
//  NetworkServicesMovies.swift
//  tmdMovie
//
//  Created by Memo Figueredo on 13/9/21.
//

import Foundation

class NetworkServiesMovies {
    
    static var shared = NetworkServiesMovies()
    let session = URLSession(configuration: .default)
    func sycnUsers(searchTerm: String,completion: @escaping (()-> Void)) {
        let token = "5fff233cf139639b37ee955e7a852f34"
        let URL_BASE = "https://api.themoviedb.org/3/movie/\(searchTerm)?api_key=\(token)&language=en-US"
        guard let url = URL(string: URL_BASE) else {return}
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        let task = session.dataTask(with: request) { data, response, error in
            print(response!)
            do {
                let json = try JSONSerialization.jsonObject(with: data!) as! Dictionary<String, AnyObject>
//                print(json)
                let model = try JSONDecoder().decode(APIResponse<[MoviesServiceModel]>.self, from: data!)

//                Save Data Database Local
                model.results.forEach { $0.store()}
                completion()
            } catch {
                print(error)
                completion()
            }
        }
        task.resume()
    }
    
}

public struct APIResponse<T: Codable> : Codable {
   public let total_results: Int
   public let page: Int
   public let results: T
    
}
