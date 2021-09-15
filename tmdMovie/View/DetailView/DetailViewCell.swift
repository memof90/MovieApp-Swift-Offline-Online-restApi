//
//  DetailViewCell.swift
//  tmdMovie
//
//  Created by Memo Figueredo on 15/9/21.
//

import UIKit

class DetailViewCell: UICollectionViewCell {
    
    //    MARK: - Image
        let imagePath: UIImageView = {
           let iv = UIImageView()
            iv.layer.cornerRadius = 8
            iv.clipsToBounds = true
            iv.widthAnchor.constraint(equalToConstant: 150).isActive = true
            iv.heightAnchor.constraint(equalToConstant: 300).isActive = true
            iv.layer.borderWidth = 0.5
            iv.layer.borderColor = UIColor(white: 0.5, alpha: 0.5).cgColor
            iv.contentMode = .scaleAspectFill
            return iv
        }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .blue
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
