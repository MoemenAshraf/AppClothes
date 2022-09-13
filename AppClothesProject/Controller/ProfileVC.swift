//
//  ProfileVC.swift
//  AppClothesProject
//
//  Created by Omar Tharwat on 13/09/2022.
//

import UIKit

class ProfileVC: UIViewController {
    
    // MARK :- OUTLET
    @IBOutlet weak var emailView: UIView! {
        didSet {
            emailView.layer.cornerRadius = 10
        }
    }
    @IBOutlet weak var profileCardView: UIView!{
        didSet {
            profileCardView.layer.shadowColor = UIColor.gray.cgColor
            profileCardView.layer.shadowOpacity = 0.3
            profileCardView.layer.shadowOffset = CGSize(width: 0, height: 10)
            profileCardView.layer.shadowRadius = 10
            profileCardView.layer.cornerRadius = 25
        }
    }
    @IBOutlet weak var userImage: UIImageView!{
        didSet {
            userImage.layer.borderWidth = 1
            userImage.layer.masksToBounds = false
            userImage.layer.borderColor = UIColor.black.cgColor
            userImage.layer.cornerRadius = userImage.frame.width/2
            userImage.clipsToBounds = true
         
        }
    }
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var logoutOutlet: UIButton! {
        didSet {
            logoutOutlet.layer.cornerRadius = 10
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    // MARK :- ACTIONS
    @IBAction func logoutButton(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "SignUpLogin", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "LoginVC") as! Login
        self.present(vc, animated: true)
        
    }
    

    

}
