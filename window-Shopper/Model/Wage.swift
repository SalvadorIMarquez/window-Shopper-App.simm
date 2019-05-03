//
//  Wage.swift
//  window-Shopper
//
//  Created by Salvador Marquez on 5/2/19.
//  Copyright © 2019 Citsa Digital. All rights reserved.
//

import Foundation
class Wage{
    
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int (ceil(price / wage))
    }
}
