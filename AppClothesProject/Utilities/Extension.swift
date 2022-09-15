//
//  Extension.swift
//  AppClothesProject
//
//  Created by Omar Tharwat on 14/09/2022.
//

import Foundation
import UIKit

extension UIImageView {
    
    func setImageFromStringUrl(stringUrl : String) {
        if let url = URL(string: stringUrl){
            if let imageData = try? Data(contentsOf: url){
                self.image = UIImage(data: imageData)
            }
        }
    }
}
