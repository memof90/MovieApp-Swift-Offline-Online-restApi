//
//  BaseListController.swift
//  tmdMovie
//
//  Created by Memo Figueredo on 13/9/21.
//

import UIKit

class BaseListController : UICollectionViewController {
    //    pass view to tabBar to UICollectionViewController
        init() {
            super.init(collectionViewLayout: UICollectionViewFlowLayout())
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
}
