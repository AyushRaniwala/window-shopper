//
//  Wage.swift
//  window-shopper
//
//  Created by Ayush Raniwala on 24/08/20.
//  Copyright © 2020 Ayush Raniwala. All rights reserved.
//

import Foundation

class Wage{
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int{
        return Int(ceil(price / wage))
    }
    
}
