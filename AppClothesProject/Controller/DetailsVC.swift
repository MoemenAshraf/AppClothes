//
//  DetailsVC.swift
//  AppClothesProject
//
//  Created by Omar Tharwat on 10/09/2022.
//

import UIKit


class DetailsVC: UIViewController {
    
    var lastIndexActive:IndexPath = [1 ,0]
    
    var colours : [Colour] = [Colour(colour: UIColor.lightGray),Colour( colour: UIColor.orange ), Colour(colour: UIColor.blue) ,Colour( colour: UIColor.green)]
    
    var sizes : [Size] = [Size(size: "XS"),Size(size: "S"),Size(size: "M"),Size(size: "L"),Size(size: "XL")]
    
    var imageToShow = UIImage()
    var nameToShow = String()
    var priceToShow = String()
    
    
   // MARK : OUTLETS
    @IBOutlet weak var sizesCollectionView: UICollectionView!
    @IBOutlet weak var coloursCollectionView: UICollectionView!
    @IBOutlet weak var imageDetails: UIImageView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var backButtonView: UIButton! {
        didSet {
            backButtonView.setTitle("", for: .normal)
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
        
       
        
        coloursCollectionView.dataSource = self
        coloursCollectionView.delegate = self
        
        sizesCollectionView.dataSource = self
        sizesCollectionView.delegate = self
        
        imageDetails.image = imageToShow
        priceOfClothes.text = priceToShow
        nameOfClothes.text = nameToShow

        
    }
    
    // MARK : ACTIONS
    

    @IBAction func addToCartButton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "CartVC")
        vc?.modalPresentationStyle = .fullScreen
        present(vc!, animated: true)
        
    }
    @IBAction func backButtonDetails(_ sender: Any) {
        dismiss(animated: true)
    }
    
    
    

}


extension DetailsVC : UICollectionViewDelegate , UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.coloursCollectionView {
            return colours.count
        }else {
            return sizes.count
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.coloursCollectionView {
            let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "ColourCell", for: indexPath) as! ColourCell
            cell1.colourView.backgroundColor = colours[indexPath.row].colour
            return cell1
        }else {
            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "SizeCell", for: indexPath) as! SizeCell
            cell2.sizeLabel.text = sizes[indexPath.row].size
            cell2.contentView.layer.cornerRadius = 15
            return cell2
        }
    }
}
