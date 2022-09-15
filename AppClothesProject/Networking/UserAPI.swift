//
//  Api.swift
//  AppClothesProject
//
//  Created by Omar Tharwat on 12/09/2022.
//

import Foundation
import Alamofire
import SwiftyJSON


class UserAPI : API {
    
    static let url = "https://clothesapplication.herokuapp.com/user/register"
    
   static func createUser(register: UserRegister, completionHandler: @escaping (Bool, String) -> ()) {
       
       let parameters = [
       "name" : register.name,
       "e_Mail" : register.email,
       "password" : register.password
                        ]

       AF.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default).response { response in
           
          switch response.result {
          case .success(let data):
            do{
//                let json = try JSONSerialization.jsonObject(with: data!, options: [])
//              print(json)
              if response.response!.statusCode >= 200 {
                completionHandler(true, "User register successfully")
              } else {
                completionHandler(false, "Please try again")
              }
            } catch {
              print(error.localizedDescription)
              completionHandler(false, "Please try again")
            }
          case .failure(let error):
            print(error.localizedDescription)
            completionHandler(false, "Please try again")
          }
        }
      }
    


    }

    


