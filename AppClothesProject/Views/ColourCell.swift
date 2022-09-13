//
//  ColourCell.swift
//  AppClothesProject
//
//  Created by Omar Tharwat on 12/09/2022.
//

import UIKit

class ColourCell: UICollectionViewCell {
    
    @IBOutlet weak var colourView: UIView! {
        didSet {
            colourView.layer.cornerRadius = 25
        }
    }
    
    override var isSelected: Bool {
        didSet {
            self.contentView.backgroundColor =  isSelected ? UIColor.darkGray : UIColor.clear
            self.colourView.alpha = isSelected ? 0.75 : 1.0
        }
      }
    
}

