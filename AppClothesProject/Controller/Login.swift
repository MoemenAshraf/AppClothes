//
//  Login.swift
//  AppClothesProject
//
//  Created by Mayar Adel on 9/12/22.
//

import UIKit

class Login: UIViewController {
    
    //  MARK :- OULETS
    @IBOutlet weak var emailLogInTextField: UITextField!
    
    @IBOutlet weak var passwordLogInTextField: UITextField!
    
    @IBOutlet weak var logInButtonOutlet: UIButton!{
        didSet {
            logInButtonOutlet.layer.cornerRadius = 10
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    

    
    //  MARK :- ACTIONS


    @IBAction func logInButton(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "HomeMain", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "TabBarVC") as! UITabBarController
        
        self.present(vc, animated: true)
        

        
        

        }
            
        
        }
        
    
    


