//
//  ViewController.swift
//  TestClothes
//
//  Created by Omar Tharwat on 09/09/2022.
//

import UIKit

class ViewController: UIViewController {
    
    var clothes : [Clothes] = []
    
    // MARK :- OUTLET
    
    @IBOutlet weak var clothesCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clothesCollectionView.dataSource = self
        clothesCollectionView.delegate = self
        
        ClothesAPI.getAllClothes { respnse in
            switch respnse {
            case .success(let cloth) :
                self.clothes.append(contentsOf: cloth)
                self.clothesCollectionView.reloadData()
                
            case .failure(let error):
                
                let alert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Click", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                
            }
        }
        

        
    }


}

extension ViewController : UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return clothes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! ClothesCell
        let imageStringUrl = clothes[indexPath.row].image
        cell.clothesImage.setImageFromStringUrl(stringUrl: imageStringUrl ?? "Photo2")
        cell.clothesName.text = clothes[indexPath.row].name
        let price = clothes[indexPath.row].price
        cell.clothesPrice.text = "$ \(price ?? 0)"
        cell.layer.masksToBounds = false
        cell.layer.cornerRadius = 20
        

        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let cellWidth = 20.0
          let cellHeight = cellWidth

          return CGSize(width: cellWidth, height: cellHeight)
}
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailsVC") as! DetailsVC
        
        let imageString = clothes[indexPath.row].image
        vc.imageToShow.setImageFromStringUrl(stringUrl: imageString ?? "Photo2")
        var price = clothes[indexPath.row].price
        vc.priceToShow = "$ \(price ?? 0)"
        vc.nameToShow = clothes[indexPath.row].name!
        
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        
    }
    
    

}
