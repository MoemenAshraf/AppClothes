//
//  ViewController.swift
//  TestClothes
//
//  Created by Omar Tharwat on 09/09/2022.
//

import UIKit

class ViewController: UIViewController {
    
    var clothes : [Clothes] = [Clothes(image: UIImage(named: "Photo2"), name: "Bamber Jacket", price: "$ 89.75"),Clothes(image: UIImage(named: "Photo2"), name: "Bamber Jacket", price: "$ 89.75"),Clothes(image: UIImage(named: "Photo2"), name: "Bamber Jacket", price: "€ 89.75"),Clothes(image: UIImage(named: "Photo2"), name: "Bamber Jacket", price: "€ 89.75"),Clothes(image: UIImage(named: "Photo2"), name: "Bamber Jacket", price: "€ 89.75"),Clothes(image: UIImage(named: "Photo2"), name: "Bamber Jacket", price: "€ 89.75"),Clothes(image: UIImage(named: "Photo2"), name: "Bamber Jacket", price: "€ 89.75"),Clothes(image: UIImage(named: "Photo2"), name: "Bamber Jacket", price: "€ 89.75")]
    
    // MARK :- OUTLET
    
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
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//          let frameCV = collectionView.frame
//
//        let cellWidth = 20.0
//          let cellHeight = cellWidth
//
//          return CGSize(width: cellWidth, height: cellHeight)
//
//      }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailsVC") as! DetailsVC
        vc.imageToShow = clothes[indexPath.row].image!
        vc.nameToShow = clothes[indexPath.row].name!
        vc.priceToShow = clothes[indexPath.row].price!
        
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        
    }
    
    
}
