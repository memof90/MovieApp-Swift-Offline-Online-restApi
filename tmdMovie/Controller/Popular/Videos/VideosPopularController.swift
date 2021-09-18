//
//  VideosPopularController.swift
//  tmdMovie
//
//  Created by Memo Figueredo on 18/9/21.
//

import UIKit


class VideosPopularController: BaseListController, UICollectionViewDelegateFlowLayout {
    
//    var movies: [ResultVideo]?
    var appVideos = [ResultVideo]()
    
    //    MARK:- Identifier Cell
        fileprivate let cellId = "id1234"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .cyan
        
        //        Allow register identifier cell
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellId)
    }
    
        var didselectHandler: (() -> ())?
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 350)
    }
        
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 1
//        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
                    
                    
        
                return cell
    }
}
