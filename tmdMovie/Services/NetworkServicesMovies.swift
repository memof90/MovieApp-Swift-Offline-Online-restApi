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
    func sycnPopular(searchTerm: String,completion: @escaping (()-> Void)) {
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
                let model = try JSONDecoder().decode(APIResponse<[PopularServiceModel]>.self, from: data!)

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
    
    func sycnTopRated(searchTerm: String,completion: @escaping (()-> Void)) {
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
                let model = try JSONDecoder().decode(APIResponse<[TopRatedServiceModel]>.self, from: data!)

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
    
    func sycnUpcoming(searchTerm: String,completion: @escaping (()-> Void)) {
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
                let model = try JSONDecoder().decode(APIResponse<[UpcomingServiceModel]>.self, from: data!)

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
    
    func fecthSearch(searchTerm: String, completion: @escaping ([Results], Error?) -> ()) {
        let token = "5fff233cf139639b37ee955e7a852f34"
//        https://api.themoviedb.org/3/search/movie?api_key=5fff233cf139639b37ee955e7a852f34&query=avengers
        let URL_BASE = "https://api.themoviedb.org/3/search/movie?api_key=\(token)&query=\(searchTerm)"
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
                let searchResult = try JSONDecoder().decode(SearchResult.self, from: data)
//                print(searchResult)
                completion(searchResult.results, nil)
            } catch let jsonErr {
                debugPrint("Failed to decode json:", jsonErr)
                completion([], jsonErr)
            }
                    
        }.resume()
    }
    
}

public struct APIResponse<T: Codable> : Codable {
   public let total_results: Int
   public let page: Int
   public let results: T
    
}
