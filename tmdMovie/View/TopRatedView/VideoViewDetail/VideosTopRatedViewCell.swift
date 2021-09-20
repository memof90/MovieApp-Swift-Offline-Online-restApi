//
//  VideosTopRatedViewCell.swift
//  tmdMovie
//
//  Created by Memo Figueredo on 20/9/21.
//

import UIKit

class VideosTopRatedViewCell: UICollectionViewCell {
    
    //    MARK: -label
        let nameLabel: UILabel = {
            let label = UILabel()
            label.text = "APP MOVIE"
            return label
        }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
        
        let stackViewMain = UIStackView(arrangedSubviews: [
            nameLabel
        ])
        addSubview(stackViewMain)
        
        stackViewMain.fillSuperview(padding: .init(top: 15, left: 15, bottom: 15, right: 15))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
