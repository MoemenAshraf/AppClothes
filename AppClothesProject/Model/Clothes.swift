//
//  Clothes.swift
//  AppClothesProject
//
//  Created by Omar Tharwat on 10/09/2022.
//

import Foundation
import UIKit
import Alamofire
import SwiftyJSON


struct ClothesCart {
    var image: UIImage?
    var name: String?
    var price: String?
    
}

struct Colour   {
    var colour : UIColor?
}
struct Size : Decodable {
    var size : String?
}
struct Clothes: Codable {
    var proID: Int?
    var name: String?
    var price: Int?
    var image: String?

    enum CodingKeys: String, CodingKey {
        case proID = "proId"
        case name, price, image
    }
}

