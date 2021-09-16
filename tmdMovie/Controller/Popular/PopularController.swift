//
//  PopularController.swift
//  tmdMovie
//
//  Created by Memo Figueredo on 13/9/21.
//

import UIKit


class PopularViewController: BaseListController, UICollectionViewDelegateFlowLayout, UISearchBarDelegate {
    
//    MARK:- Identifier Cell
    fileprivate let cellId = "id1234"
    
//    MARK: - DataBaseLocal
    let database = DatabaseHandler.shared
    
//    MARK: - Reload collectionView
    var movies : [Popular]? {
        didSet {
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
      
        }
    }
    
//   MARK: - SearchBar
    fileprivate let searchController = UISearchController(searchResultsController: nil)
    fileprivate let enterSearchTermLabel: UILabel = {
            let label = UILabel()
            label.text  = "Please enter your movie Search"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
//        Allow register identifier cell
        collectionView.register(PopulaViewCell.self, forCellWithReuseIdentifier: cellId)
        setupSearchBar()
        NetworkServicesCoreData()
        fetchDataToCoreData()
    }
    
//    MARK: - setupSearchBar
    fileprivate func setupSearchBar() {
        definesPresentationContext = true
        navigationItem.searchController = self.searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.delegate = self
    }
    
//    MARK: - Action to reloadTime Searching
    //    timer to reload data
        var timer: Timer?
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
    }
    
//    MARK:- Save Data to Api to Core Data Model
    func NetworkServicesCoreData() {
        NetworkServiesMovies.shared.sycnPopular(searchTerm: "popular") {
            self.movies = self.database.fetch(Popular.self)
        }
    }

// MARK: - OPTION TWO Save Data to Api to Core Data Model
    override func viewDidAppear(_ animated: Bool) {
//        NetworkServiesMovies.shared.sycnPopular(searchTerm: "popular") {
//            self.movies = self.database.fetch(Popular.self)
//        }
    }
        
//        MARK:- Fetch data to Core Data
    func fetchDataToCoreData() {
        movies = database.fetch(Popular.self)
    }
// MARK: - OPTION TWO Fetch data to Core Data
        override func viewWillAppear(_ animated: Bool) {
            //        let results = database.fetch(Movies.self)
            //        print(results.map { $0.title})
//                    movies = database.fetch(Popular.self)
        }
    
    var didselectHandler: (() -> ())?
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let movies = movies?[indexPath.item] else { return }
//        print(movies)
        let Controller = DetailPopularViewController()
        Controller.navigationItem.title = movies.title
//        Controller.appId = Int(movies.id)
        Controller.movies =  movies
        
        navigationController?.pushViewController(Controller, animated: true)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 350)
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies?.count ?? 0
//        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! PopulaViewCell
        if movies!.count > 0 && indexPath.row < movies!.count {
            cell.movies = movies?[indexPath.item]
        }
        
        return cell
    }
}
