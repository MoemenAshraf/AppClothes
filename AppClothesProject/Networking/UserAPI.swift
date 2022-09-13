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

    static func registerNewUser( name : String  , email : String ,password : String, completionHandler :@escaping (User?, String?) ->() ){
    // SEND THE REQUEST
    let url = "\(baseURL)/user/create"
    let params = [
        "password" : password,
        "name" : name,
        "email"     : email
                 ]
    AF.request(url,method: .post,parameters: params,encoder: JSONParameterEncoder.default).validate().responseJSON { response in
        switch response.result {
        case .success:
            let jsonData = JSON(response.value)
            let decoder = JSONDecoder()
            do {
                let user = try decoder.decode(User.self, from: jsonData.rawData())
                completionHandler(user,nil)
            }catch let error {
                print(error)
            }
        case .failure(let error) :
            let jsonData = JSON(response.data)
            let data = jsonData["data"]
            
            //  ERROR MESSAGE
            let emailError = data["email"].stringValue
            let nameError = data["firstName"].stringValue
            let errorMessage = emailError + " " + nameError
            
            completionHandler(nil,errorMessage)
        }
             
         }

}
    
    static func signInUser( email : String , password: String , completionHandler :@escaping (User?, String?) ->() ){
        // SEND THE REQUEST
        let url = "\(baseURL)/user"
        let params = [
            "created" : "1"
                     ]
        AF.request(url,method: .get,parameters: params,encoder: URLEncodedFormParameterEncoder.default).validate().responseJSON { response in
            switch response.result {
            case .success:
                let jsonData = JSON(response.value)
                let data = jsonData["data"]
                let decoder = JSONDecoder()
                do {
                    let users = try decoder.decode([User].self, from: data.rawData())
                    var foundUser : User?
                    for user in users {
                        if user.email == email && user.Password == password{
                            foundUser = user
                            break
                        }
                    }
                        if let user = foundUser{
                            completionHandler(user,nil)
                        }else{
                            completionHandler(nil,"The email or the password don't match any user")
                        }
                    
                  //  completionHandler(user,nil)
                }catch let error {
                    print(error)
                }
            case .failure(let error) :
                let jsonData = JSON(response.data)
                let data = jsonData["data"]
                
                //  ERROR MESSAGE
                let emailError = data["email"].stringValue
                let passwordError = data["Password"].stringValue
                let errorMessage = emailError + " " + passwordError
                
                completionHandler(nil,errorMessage)
            }
                 
             }

    }
    
    
}
