//
//  SizeCell.swift
//  AppClothesProject
//
//  Created by Omar Tharwat on 12/09/2022.
//

import UIKit

class SizeCell: UICollectionViewCell {
    @IBOutlet weak var sizeLabel: UILabel!
    
    
    override var isSelected: Bool {
        didSet {
            self.sizeLabel.textColor = isSelected ?  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) : #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            self.sizeLabel.backgroundColor = isSelected ? #colorLiteral(red: 0.8743465543, green: 0.1577501893, blue: 0.2328583598, alpha: 1) : #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.968627451, alpha: 1)
            self.sizeLabel.layer.masksToBounds = true
            self.sizeLabel.alpha = isSelected ? 0.75 : 1.0
        }
      }
    
    
    
}

