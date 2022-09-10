//
//  CardCell.swift
//  AppClothesProject
//
//  Created by Omar Tharwat on 10/09/2022.
//

import UIKit

class CardCell: UITableViewCell {
    
    @IBOutlet weak var minusButtonOutlet: UIButton!{
        didSet {
            minusButtonOutlet.titleLabel?.isHidden = true
        }
    }
    @IBOutlet weak var plusButtonOutlet: UIButton!{
        didSet {
            plusButtonOutlet.titleLabel?.isHidden = true
        }
    }
    @IBOutlet weak var sizeButtonOutlet: UIButton!{
        didSet {
            sizeButtonOutlet.titleLabel?.isHidden = true
        }
    }
    @IBOutlet weak var imageCart: UIImageView!
    @IBOutlet weak var nameCart: UILabel!{
        didSet {
            layer.shadowColor = UIColor.lightGray.cgColor
                   layer.shadowOffset = CGSize(width: 0, height: 2.0)
                   layer.shadowRadius = 5.0
            layer.shadowOpacity = 0.5
                   layer.masksToBounds = false
                   layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: contentView.layer.cornerRadius).cgPath
                   layer.backgroundColor = UIColor.clear.cgColor
            
            nameCart.layer.cornerRadius = 10

            contentView.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var priceCart: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}
