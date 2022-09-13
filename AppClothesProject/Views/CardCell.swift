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
            minusButtonOutlet.setTitle("", for: .normal)
        }
    }
    @IBOutlet weak var plusButtonOutlet: UIButton!{
        didSet {
            plusButtonOutlet.setTitle("", for: .normal)
        }
    }
    @IBOutlet weak var sizeButtonOutlet: UIButton!{
        didSet {
            sizeButtonOutlet.setTitle("", for: .normal)
        }
    }
    @IBOutlet weak var imageCart: UIImageView!{
        didSet {
            layer.shadowColor = UIColor.lightGray.cgColor
                   layer.shadowOffset = CGSize(width: 0, height: 2.0)
                   layer.shadowRadius = 5.0
            layer.shadowOpacity = 0.5
                   layer.masksToBounds = false
                   layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: contentView.layer.cornerRadius).cgPath
                   layer.backgroundColor = UIColor.clear.cgColor
            
            imageCart.layer.cornerRadius = 20

            contentView.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var nameCart: UILabel!
    @IBOutlet weak var priceCart: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}
