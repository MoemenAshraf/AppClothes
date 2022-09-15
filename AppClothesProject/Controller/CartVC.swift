//
//  CartVC.swift
//  AppClothesProject
//
//  Created by Omar Tharwat on 10/09/2022.
//

import UIKit

class CartVC: UIViewController {
    
    var carts : [ClothesCart] = [ClothesCart(image: UIImage(named: "Photo2"), name: "Purple Outfit Set", price: "$110"),ClothesCart(image: UIImage(named: "Photo2"), name: "Purple Outfit Set", price: "$110"),ClothesCart(image: UIImage(named: "Photo2"), name: "Purple Outfit Set", price: "$110")
        ]

 //   MARK :- OUTLETS
    @IBOutlet weak var cartTable: UITableView!
    @IBOutlet weak var backButton: UIButton!{
        didSet {
            backButton.titleLabel?.isHidden = true
        }
    }
    @IBOutlet weak var checkoutOutlet: UIButton!{
        didSet {
            checkoutOutlet.layer.cornerRadius = 10
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cartTable.delegate = self
        cartTable.dataSource = self

       
    }
    
    // MARK :- ACTIONS
    
    @IBAction func backButtonCart(_ sender: Any) {
        dismiss(animated: true)
    }
    


}

extension CartVC : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CardCell", for: indexPath) as! CardCell
        cell.imageCart.image = carts[indexPath.row].image
        cell.nameCart.text = carts[indexPath.row].name
        cell.priceCart.text = carts[indexPath.row].price
        cell.countLabel.text = "1"
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath)
    {
        let verticalPadding: CGFloat = 10

        let maskLayer = CALayer()
        maskLayer.cornerRadius = 10
        maskLayer.backgroundColor = UIColor.black.cgColor
        maskLayer.frame = CGRect(x: cell.bounds.origin.x, y: cell.bounds.origin.y, width: cell.bounds.width, height: cell.bounds.height).insetBy(dx: 0, dy: verticalPadding/2)
        cell.layer.mask = maskLayer
    }
    
}
