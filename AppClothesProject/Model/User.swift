//
//  User.swift
//  AppClothesProject
//
//  Created by Omar Tharwat on 12/09/2022.
//

import Foundation



struct UserRegister : Codable {
    let name, email, password : String?
}


struct UserLogIn : Codable {
    let email, password : String?
}



