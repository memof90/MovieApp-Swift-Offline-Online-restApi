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
    }

    func getMovies () {
        MovieNetworkServices.shared.fetchPopularMovies(searchTerm: "popular") { (movie) in
            print(movie)
        } onError: { (errorMessage) in
            print(errorMessage)
        }

    }
}

