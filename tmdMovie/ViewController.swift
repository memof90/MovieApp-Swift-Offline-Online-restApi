//
//  ViewController.swift
//  tmdMovie
//
//  Created by Memo Figueredo on 10/9/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getMovies()
        getMov()
    }

    func getMovies () {
//        MovieNetworkServices.shared.fetchPopularMovies(searchTerm: "popular") { (movie) in
//            print(movie)
//        } onError: { (errorMessage) in
//            print(errorMessage)
//        }

    }
    
    func getMov() {
        MovieNetworkServices.shared.fecthPopular(searchTerm: "popular") { (results, err) in
            if let err = err {
                print("Failed to fetch apps:", err)
                return
            }
            print(results)
        }
    }
}

