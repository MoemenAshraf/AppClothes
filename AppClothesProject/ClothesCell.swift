//
//  ClothesCell.swift
//  AppClothesProject
//
//  Created by Omar Tharwat on 10/09/2022.
//

import UIKit

class ClothesCell: UICollectionViewCell {
    
    @IBOutlet weak var clothesImage: UIImageView!
    @IBOutlet weak var clothesName: UILabel!
    @IBOutlet weak var clothesPrice: UILabel!
    
    @IBOutlet weak var viewOfCell: UIView! {
        didSet {
            layer.shadowColor = UIColor.lightGray.cgColor
                   layer.shadowOffset = CGSize(width: 0, height: 2.0)
                   layer.shadowRadius = 5.0
            layer.shadowOpacity = 0.5
                   layer.masksToBounds = false
                   layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: contentView.layer.cornerRadius).cgPath
                   layer.backgroundColor = UIColor.clear.cgColor

            contentView.layer.cornerRadius = 20
            contentView.layer.masksToBounds = true
        }
    }
    
}
