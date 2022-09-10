//
//  ViewController.swift
//  TestClothes
//
//  Created by Omar Tharwat on 09/09/2022.
//

import UIKit

class ViewController: UIViewController {
    
    var clothes : [Clothes] = [Clothes(image: UIImage(named: "Photo2"), name: "Bamber Jacket", price: "$ 89.75"),Clothes(image: UIImage(named: "Photo2"), name: "Bamber Jacket", price: "$ 89.75"),Clothes(image: UIImage(named: "Photo2"), name: "Bamber Jacket", price: "€ 89.75"),Clothes(image: UIImage(named: "Photo2"), name: "Bamber Jacket", price: "€ 89.75"),Clothes(image: UIImage(named: "Photo2"), name: "Bamber Jacket", price: "€ 89.75"),Clothes(image: UIImage(named: "Photo2"), name: "Bamber Jacket", price: "€ 89.75"),Clothes(image: UIImage(named: "Photo2"), name: "Bamber Jacket", price: "€ 89.75"),Clothes(image: UIImage(named: "Photo2"), name: "Bamber Jacket", price: "€ 89.75")]
    
    
    @IBOutlet weak var clothesCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clothesCollectionView.dataSource = self
        clothesCollectionView.delegate = self
        
        
        
    }


}

extension ViewController : UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return clothes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! ClothesCell
        cell.clothesImage.image = clothes[indexPath.row].image
        cell.clothesName.text = clothes[indexPath.row].name
        cell.clothesPrice.text = clothes[indexPath.row].price
        
        cell.layer.masksToBounds = false
        cell.layer.cornerRadius = 20
        
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
          let frameCV = collectionView.frame
          
          let cellWidth = frameCV.width / CGFloat(2)
          let cellHeight = cellWidth
          
          return CGSize(width: cellWidth, height: cellHeight)

      }
    
    
}
