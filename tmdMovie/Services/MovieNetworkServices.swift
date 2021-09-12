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
                print(String(data: data!, encoding: .utf8))
                guard let data = data, let response = response as? HTTPURLResponse else {
                    onError("Invalid data or reponse")
                    return
                }
                
//            MARK: We have to handle 500 or 400 errors or 200 success
                do {
                    if response.statusCode == 200 {
                        let movieData = try JSONDecoder().decode(ResultsPopular.self, from: data)
                        print(movieData)
                        onSucees(movieData)
                    } else {
//                        show error to user
                    let err = try JSONDecoder().decode(APIError.self, from: data)
                  //                    handle erorr
                    onError(err.message)
                    }
                    
                } catch {
                    onError(error.localizedDescription)
                }
               
            }
        }
        task.resume()
    }
    
    func fecthPopular(searchTerm: String, completion: @escaping ([Movie], Error?) -> ()) {
        let token = "5fff233cf139639b37ee955e7a852f34"
        let URL_BASE = "https://api.themoviedb.org/3/movie/\(searchTerm)?api_key=\(token)&language=en-US"
        guard let url = URL(string: URL_BASE) else {return}
        
        URLSession.shared.dataTask(with: url) { (data, resp, err) in
            if let err = err {
                print("Failed to fetch apps:", err)
                completion([], nil)
                return
            }
//                        print(data)
//                        print(String(data: data!, encoding: .utf8))
            guard let data = data else {return}
            
            do {
                let searchResult = try JSONDecoder().decode(ResultsPopular.self, from: data)
                completion(searchResult.results, nil)
            } catch let jsonErr {
                debugPrint("Failed to decode json:", jsonErr)
                completion([], jsonErr)
            }
                    
        }.resume()
    }
}
