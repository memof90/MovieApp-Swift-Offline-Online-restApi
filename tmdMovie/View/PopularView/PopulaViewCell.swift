//
//  PopulaViewCell.swift
//  tmdMovie
//
//  Created by Memo Figueredo on 13/9/21.
//

import UIKit
import Kingfisher

class PopulaViewCell: UICollectionViewCell {
    //    MARK: - property observers to pass data to cell to controller each change to property
    var movies: Popular? {
        didSet {
            setupData()
        }
    }
    //    MARK: - Data to cell
    func setupData() {
        guard let movies = movies else { return }
        if let url = URL(string: "https://image.tmdb.org/t/p/original\(movies.poster_path)") {
            imagePath.kf.indicatorType = .activity
            imagePath.kf.setImage(
                with: url,
                options: [
                    .scaleFactor(UIScreen.main.scale),
                    .transition(.fade(1)),
                    .cacheOriginalImage
                
                ]
            )
        }
        
        nameLabel.text = movies.title
        ratingLabel.text = movies.vote_average.toString()
        dateLabel.text = movies.release_date
        
        
    }
    
    override func prepareForReuse() {
        imagePath.image = nil
        nameLabel.text = nil
        ratingLabel.text = nil
        dateLabel.text = nil
    }

    
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

//    MARK: -label
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "APP MOVIE"
        return label
    }()
    

    
// MARK:-  Rating label
        let ratingLabel: UILabel = {
            let ratingLabel = UILabel()
            ratingLabel.text = "9.26M"
            ratingLabel.font = .boldSystemFont(ofSize: 15)
            ratingLabel.textColor = #colorLiteral(red: 0.7540688515, green: 0.7540867925, blue: 0.7540771365, alpha: 1)
            return ratingLabel
        }()
    
// MARK: - Icon
    let imageIcon: UIImageView = {
        let imageIcon = UIImageView()
        imageIcon.image = UIImage(systemName: "star.fill")
        imageIcon.tintColor = #colorLiteral(red: 1, green: 0.9022858502, blue: 0, alpha: 1)
        return imageIcon
    }()
    
// MARK:-  date label
            let dateLabel: UILabel = {
                let dateLabel = UILabel()
                dateLabel.text = "2019-08-2021"
                dateLabel.font = .boldSystemFont(ofSize: 15)
                dateLabel.textColor = #colorLiteral(red: 0.7540688515, green: 0.7540867925, blue: 0.7540771365, alpha: 1)
                return dateLabel
            }()
    
//    MARK: - Button WatchList
    lazy var getWhatchButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("WatchList", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1), for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        button.backgroundColor = UIColor(white: 0.95, alpha: 1)
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        button.layer.cornerRadius = 16
        button.addTarget(self, action: #selector(didTapMyButton), for: .touchUpInside)
        return button
    }()
    
    @objc func didTapMyButton(sender:UIButton!) {
        print("Tapped it!")
    }
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {

        guard isUserInteractionEnabled else { return nil }

        guard !isHidden else { return nil }

        guard alpha >= 0.01 else { return nil }

        guard self.point(inside: point, with: event) else { return nil }


        // add one of these blocks for each button in our collection view cell we want to actually work
//        if self.getWhatchButton.point(inside: convert(point, to: myButton), with: event) {
//            return self.myButton
//        }

        return super.hitTest(point, with: event)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
//        backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
//        
        // MARK: - Stack View contentLabel
        
        let stackLabelStart = UIStackView(arrangedSubviews: [
        imageIcon,ratingLabel
        ])
        stackLabelStart.spacing = 5
        let labelStackViewDescription = UIStackView(arrangedSubviews: [
        stackLabelStart,dateLabel
        ])
        labelStackViewDescription.axis = .horizontal
        labelStackViewDescription.alignment = .center
        labelStackViewDescription.spacing = 10
        
        
        let labelStackView = UIStackView(arrangedSubviews: [
            nameLabel, labelStackViewDescription ,getWhatchButton
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
        stackView.fillSuperview(padding: .init(top: 15, left: 15, bottom: 15, right: 15))
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
