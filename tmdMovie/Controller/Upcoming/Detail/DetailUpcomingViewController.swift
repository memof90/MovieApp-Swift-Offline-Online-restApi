//
//  DetailUpcomingViewController.swift
//  tmdMovie
//
//  Created by Memo Figueredo on 15/9/21.
//

import UIKit

class DetailUpcomingViewController: BaseListController, UICollectionViewDelegateFlowLayout {
    
    var appId: Int! {
        didSet {
            print("Here is my id", appId!)
        }
    }
    
    //    MARK:- Identifier Cell
        fileprivate let cellId = "id1234"
    
        override func viewDidLoad() {
            super.viewDidLoad()
        }
}
