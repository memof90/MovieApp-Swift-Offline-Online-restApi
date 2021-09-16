//
//  BaseListController.swift
//  tmdMovie
//
//  Created by Memo Figueredo on 13/9/21.
//

import UIKit
//    MARK: - Protocols CollectionsViewController to allow modify View to all Controller
class BaseListController : UICollectionViewController {
    //    pass view to tabBar to UICollectionViewController
        init() {
            super.init(collectionViewLayout: UICollectionViewFlowLayout())
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
}
