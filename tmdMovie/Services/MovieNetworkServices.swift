//
//  MovieNetworkServices.swift
//  tmdMovie
//
//  Created by Memo Figueredo on 10/9/21.
//

import Foundation


class MovieNetworkServices {
    static let shared = MovieNetworkServices()
    
    let session = URLSession(configuration: .default)
   
    func fetchPopularMovies(searchTerm: String,onSucees: @escaping (ResultsPopular) -> Void, onError: @escaping (String) -> Void ) {
        let token = "5fff233cf139639b37ee955e7a852f34"
        let URL_BASE = "https://api.themoviedb.org/3/movie/\(searchTerm)?api_key=\(token)&language=en-US"
        
            let url = URL(string: "\(URL_BASE)")!
                
        let task = session.dataTask(with: url) { data, response, error in
            
            //obtain process response in background
            DispatchQueue.main.async {
                if let error = error {
                    onError(error.localizedDescription)
                    return
                }
//                print(String(data: data!, encoding: .utf8))
                guard let data = data, let response = response as? HTTPURLResponse else {
                    onError("Invalid data or reponse")
                    return
                }
                
               
            }
        }
        task.resume()
    }
}
