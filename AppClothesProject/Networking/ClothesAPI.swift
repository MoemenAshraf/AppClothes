//
//  ClothesApi.swift
//  AppClothesProject
//
//  Created by Omar Tharwat on 13/09/2022.
//

import Foundation
import Alamofire
import SwiftyJSON

class ClothesAPI : API {

    static func getAllClothes(completion: @escaping (Result<[Clothes], Error>)  -> Void){
        let url = "\(API.baseURL)/product/getAllProducts"

        AF.request(url).response { response in
            
                if let data = response.data {
                    do{
                        let clothes = try JSONDecoder().decode([Clothes].self, from: data)
                        completion(.success(clothes))
                    
                    
                    } catch let error {
                        completion(.failure(error))
                    }

                }
            
        }
}
    

    
}
