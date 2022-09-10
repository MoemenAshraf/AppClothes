//
//  DetailsVC.swift
//  AppClothesProject
//
//  Created by Omar Tharwat on 10/09/2022.
//

import UIKit

class DetailsVC: UIViewController {
    
    var imageToShow = UIImage()
    var nameToShow = String()
    var priceToShow = String()
    
    
   // MARK : OUTLETS
    @IBOutlet weak var imageDetails: UIImageView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var backButtonView: UIButton! {
        didSet {
            backButtonView.titleLabel?.isHidden = true
        }
    }
    @IBOutlet weak var firstColorView: UIButton!{
        didSet {
            firstColorView.titleLabel?.isHidden = true
        }
    }
    @IBOutlet weak var secondColorView: UIButton!{
        didSet {
            secondColorView.titleLabel?.isHidden = true
        }
    }
    @IBOutlet weak var thirdColorView: UIButton!{
        didSet {
            thirdColorView.titleLabel?.isHidden = true
        }
    }
    @IBOutlet weak var fourthColorView: UIButton!{
        didSet {
            fourthColorView.titleLabel?.isHidden = true
        }
    }
    @IBOutlet weak var nameOfClothes: UILabel!
    
    @IBOutlet weak var cartButton: UIButton! {
        didSet {
            cartButton.layer.cornerRadius = cartButton.frame.size.width/7
            cartButton.layer.borderColor = UIColor.black.cgColor
            cartButton.layer.borderWidth = 1.0
        }
    }
    @IBOutlet weak var priceOfClothes: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageDetails.image = imageToShow
        priceOfClothes.text = priceToShow
        nameOfClothes.text = nameToShow

        
    }
    
    // MARK : ACTIONS
    
    @IBAction func backButton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "HomeVC")
        vc?.modalPresentationStyle = .fullScreen
        present(vc!, animated: true)
    }
    @IBAction func firstColor(_ sender: Any) {
        
    }
    @IBAction func secondColor(_ sender: Any) {
    }
    @IBAction func thirdColor(_ sender: Any) {
    }
    @IBAction func fourthColor(_ sender: Any) {
    }
    @IBAction func addToCartButton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "CartVC")
        vc?.modalPresentationStyle = .fullScreen
        present(vc!, animated: true)
        
    }
    
    
    

}
