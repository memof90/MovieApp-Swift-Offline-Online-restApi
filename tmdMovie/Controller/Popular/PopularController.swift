//
//  PopularController.swift
//  tmdMovie
//
//  Created by Memo Figueredo on 13/9/21.
//

import UIKit


class PopularViewController: BaseListController, UICollectionViewDelegateFlowLayout {
    
//    MARK:- Identifier Cell
    fileprivate let cellId = "id1234"
    
//    MARK: - DataBaseLocal
    let database = DatabaseHandler.shared
    
//    MARK: - Reload collectionView
    var movies : [Movies]? {
        didSet {
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
      
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .green
//        Allow register identifier cell
        collectionView.register(PopulaViewCell.self, forCellWithReuseIdentifier: cellId)
    }
    
//    MARK: Save Data to Api to Core Data Model
    override func viewDidAppear(_ animated: Bool) {
//        NetworkServiesMovies.shared.sycnUsers(searchTerm: "popular") {
//            self.movies = self.database.fetch(Movies.self)
//        }
    }
        
//        MARK: Fetch data to Core Data
        override func viewWillAppear(_ animated: Bool) {
            //        let results = database.fetch(Movies.self)
            //        print(results.map { $0.title})
//                    movies = database.fetch(Movies.self)
        }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 350)
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return movies?.count ?? 0
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! PopulaViewCell
//        cell.nameLabel.text = movies?[indexPath.row].title
//        cell.dateLabel.text = movies?[indexPath.row].release_date
//        cell.ratingLabel.text = movies?[indexPath.row].vote_average.toString()
        return cell
    }
}
