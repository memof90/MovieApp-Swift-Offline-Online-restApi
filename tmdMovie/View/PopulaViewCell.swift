//
//  PopulaViewCell.swift
//  tmdMovie
//
//  Created by Memo Figueredo on 13/9/21.
//

import UIKit

class PopulaViewCell: UICollectionViewCell {

    
//    MARK: - Image
    let imagePath: UIImageView = {
       let iv = UIImageView()
        iv.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        iv.widthAnchor.constraint(equalToConstant: 150).isActive = true
        iv.heightAnchor.constraint(equalToConstant: 150).isActive = true
        iv.layer.cornerRadius = 12
        return iv
    }()

//    MARK: -label
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "APP MOVIE"
        return label
    }()
    
//   MARK: - categoriyLabel
    let categoriyLabel: UILabel = {
        let categoryLabel = UILabel()
        categoryLabel.text = "Adult"
        return categoryLabel
    }()
    
    //    Rating label
        let ratingLabel: UILabel = {
            let ratingLabel = UILabel()
            ratingLabel.text = "9.26M"
            return ratingLabel
        }()
    
//    MARK: - Button WatchList
    let getWhatchButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("WatchList", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1), for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        button.backgroundColor = UIColor(white: 0.95, alpha: 1)
        button.widthAnchor.constraint(equalToConstant: 80).isActive = true
        button.heightAnchor.constraint(equalToConstant: 32).isActive = true
        button.layer.cornerRadius = 16
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        
        // MARK: - Stack View contentLabel
        let labelStackView = UIStackView(arrangedSubviews: [
            nameLabel, categoriyLabel, ratingLabel,getWhatchButton
        ])
        
        labelStackView.axis = .vertical
        labelStackView.alignment = .center
        labelStackView.spacing = 10
        
        // MARK: - Stack View Main
        let stackView = UIStackView(arrangedSubviews: [
        imagePath, labelStackView
        ])
        stackView.spacing = 20
        stackView.alignment = .center
        
        addSubview(stackView)
        
        //        contrainst
        stackView.fillSuperview(padding: .init(top: 20, left: 20, bottom: 20, right: 20))
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
