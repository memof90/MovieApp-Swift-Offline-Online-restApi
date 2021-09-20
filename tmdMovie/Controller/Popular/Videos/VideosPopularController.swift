//
//  VideosPopularController.swift
//  tmdMovie
//
//  Created by Memo Figueredo on 18/9/21.
//

import UIKit


class VideosPopularController: BaseListController, UICollectionViewDelegateFlowLayout {
    
    var movies: [ResultVideo]? {
        didSet {
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
      
        }
    }
//    var appVideos = [ResultVideo]()
    
    //    MARK:- Identifier Cell
        fileprivate let cellId = "id1234"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .cyan
        
        //        Allow register identifier cell
        collectionView.register(VideoPopularViewCell.self, forCellWithReuseIdentifier: cellId)
    }
    
//        var didselectHandler: (() -> ())?
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 350)
    }
        
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 1

    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! VideoPopularViewCell
        if movies?.count ?? 0 > 0 && indexPath.row < movies?.count ?? 0 {
                cell.nameLabel.text = movies?[indexPath.row].name
            }
                return cell
    }
}
