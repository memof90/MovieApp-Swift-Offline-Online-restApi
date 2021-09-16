//
//  DetailMovieController.swift
//  tmdMovie
//
//  Created by Memo Figueredo on 15/9/21.
//

import UIKit


class DetailPopularViewController: BaseListController, UICollectionViewDelegateFlowLayout {
    
    var myStringValue:String?
    
    //    MARK: - Reload collectionView

    
    var movies: Popular?
    
    var appId: Int! {
        didSet {
            print("Here is my id", appId!)
        }
    }
    
    //    MARK:- Identifier Cell
        fileprivate let cellId = "id1234"
    
    var didselectHandler: (() -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        
        //        Allow register identifier cell
                collectionView.register(DetailPopularViewCell.self, forCellWithReuseIdentifier: cellId)
//        the title is more small Navegation item title
            navigationItem.largeTitleDisplayMode = .never
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        print("The value of myStringValue is: \(myStringValue!)")
        didselectHandler?()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 450)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
//        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! DetailPopularViewCell
//        if movies!.count > 0 && indexPath.row < movies!.count {
            cell.movies = movies
//        }
        
        return cell
    }
    
}
