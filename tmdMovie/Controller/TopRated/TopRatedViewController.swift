//
//  TopRatedViewController.swift
//  tmdMovie
//
//  Created by Memo Figueredo on 14/9/21.
//

import UIKit

class TopRatedViewController: BaseListController, UICollectionViewDelegateFlowLayout {
    
    //    MARK:- Identifier Cell
        fileprivate let cellId = "id1234"
    
    //    MARK: - DataBaseLocal
        let database = DatabaseHandler.shared
        
    //    MARK: - Reload collectionView
        var movies : [TopRated]? {
            didSet {
                DispatchQueue.main.async {
                    self.collectionView.reloadData()
                }
          
            }
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        
        //        Allow register identifier cell
                collectionView.register(TopRatedViewCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    //    MARK: Save Data to Api to Core Data Model
        override func viewDidAppear(_ animated: Bool) {
            NetworkServiesMovies.shared.sycnTopRated(searchTerm: "top_rated") {
                self.movies = self.database.fetch(TopRated.self)
            }
        }
    
    //        MARK: Fetch data to Core Data
            override func viewWillAppear(_ animated: Bool) {
                //        let results = database.fetch(Movies.self)
                //        print(results.map { $0.title})
                        movies = database.fetch(TopRated.self)
            }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 350)
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies?.count ?? 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! TopRatedViewCell
        if movies!.count > 0 && indexPath.row < movies!.count {
            cell.movies = movies?[indexPath.item]
        }
        
        return cell
    }
}
