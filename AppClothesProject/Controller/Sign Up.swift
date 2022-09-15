//
//  Sign Up.swift
//  AppClothesProject
//
//  Created by Mayar Adel on 9/12/22.
//

import UIKit

class Sign_Up: UIViewController {
    
    
    // MARK :- OUTLETS
    @IBOutlet weak var nameSignUpTextField: UITextField!
    @IBOutlet weak var emailAdressSignUpTextField: UITextField!
    @IBOutlet weak var PasswordSignUpTextField: UITextField!
    @IBOutlet weak var reTypePasswordTextField: UITextField!
    @IBOutlet weak var signUpOutlet: UIButton!{
        didSet {
            signUpOutlet.layer.cornerRadius = 10
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK :- ACTIONS
    @IBAction func signUpButton(_ sender: Any) {

        if (PasswordSignUpTextField.text == reTypePasswordTextField.text) {
            var user = UserRegister(name: nameSignUpTextField.text, email: emailAdressSignUpTextField.text, password: PasswordSignUpTextField.text)
            
            UserAPI.createUser(register: user) { sucsess, error in
                if sucsess {
                    let alert = UIAlertController(title: "Success", message: "User Created", preferredStyle: .alert)
                       let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                       alert.addAction(okAction)
                       self.present(alert, animated: true, completion: nil)
                }else{
                    let alert = UIAlertController(title: "Error", message: error, preferredStyle: .alert)
                                 let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                                 alert.addAction(okAction)
                                 self.present(alert, animated: true, completion: nil)
                }
                
            } }else {
                            let alert = UIAlertController(title: "Error", message: "Password Doesn't Match", preferredStyle: .alert)
                            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                            alert.addAction(action)
                            self.present(alert, animated: true)
                        }
        
    }
    }
