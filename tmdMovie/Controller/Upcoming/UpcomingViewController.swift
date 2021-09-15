//
//  UpcomingViewController.swift
//  tmdMovie
//
//  Created by Memo Figueredo on 14/9/21.
//

import UIKit

class UpcomingViewController: BaseListController, UICollectionViewDelegateFlowLayout {
    
    //    MARK:- Identifier Cell
        fileprivate let cellId = "id1234"
    
    //    MARK: - DataBaseLocal
        let database = DatabaseHandler.shared
    
    //    MARK: - Reload collectionView
        var movies : [Upcomig]? {
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
                collectionView.register(UpcomingViewCell.self, forCellWithReuseIdentifier: cellId)
        
        
    }
    
    //    MARK: Save Data to Api to Core Data Model
        override func viewDidAppear(_ animated: Bool) {
            NetworkServiesMovies.shared.sycnUpcoming(searchTerm: "upcoming") {
                self.movies = self.database.fetch(Upcomig.self)
            }
        }
    
    //        MARK: Fetch data to Core Data
            override func viewWillAppear(_ animated: Bool) {
                //        let results = database.fetch(Movies.self)
                //        print(results.map { $0.title})
                        movies = database.fetch(Upcomig.self)
            }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let movies = movies?[indexPath.item] else { return }
        print(movies)
        
        let Controller = DetailUpcomingViewController()
        Controller.navigationItem.title = movies.title
        Controller.appId = Int(movies.id)
        
        navigationController?.pushViewController(Controller, animated: true)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 350)
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies?.count ?? 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! UpcomingViewCell
        
        if movies!.count > 0 && indexPath.row < movies!.count {
            cell.movies = movies?[indexPath.item]
        }
        
        return cell
    }
}
