//
//  Extensions.swift
//  iParish
//
//  Created by Valentine Ofili on 22/01/2020.
//  Copyright © 2020 Valentine Ofili. All rights reserved.
//

import Foundation
import UIKit



extension UIView{
    func createShadowBg(){
      
        self.layer.cornerRadius = 7.0
        self.layer.shadowOpacity = 0.25
        self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = 10.0
        
        self.layer.shadowColor = Utils.hexToUIColor(hex: "939393").cgColor
        
    }
    
}

