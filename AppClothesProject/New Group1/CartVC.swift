//
//  CartVC.swift
//  AppClothesProject
//
//  Created by Omar Tharwat on 10/09/2022.
//

import UIKit

class CartVC: UIViewController {
    
    var carts : [Clothes] = [Clothes(image: UIImage(named: "Photo2"), name: "Purple Outfit Set", price: "$110"),Clothes(image: UIImage(named: "Photo2"), name: "Purple Outfit Set", price: "$110"),Clothes(image: UIImage(named: "Photo2"), name: "Purple Outfit Set", price: "$110")]

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
    
    
}
