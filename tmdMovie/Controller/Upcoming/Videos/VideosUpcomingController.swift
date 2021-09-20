//
//  VideosUpcomingController.swift
//  tmdMovie
//
//  Created by Memo Figueredo on 20/9/21.
//

import UIKit


class VideosUpcommingController: BaseListController, UICollectionViewDelegateFlowLayout {
    
    //    MARK: - Reload collectionView
    var movies: [ResultVideo]? {
        didSet {
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
      
        }
    }
    
    //    MARK:- Identifier Cell
        fileprivate let cellId = "id1234"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .gray
        
        //        Allow register identifier cell
        collectionView.register(VideosUpcommingViewCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 350)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 1

    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! VideosUpcommingViewCell
        if movies?.count ?? 0 > 0 && indexPath.row < movies?.count ?? 0 {
                cell.nameLabel.text = movies?[indexPath.row].name
            }
                return cell
    }
}