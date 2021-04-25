//
//  Wage.swift
//  shopper-window
//
//  Created by Mohamed Elmowafy on 25/04/2021.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
       return Int(ceil(price / wage))
      
    }
}
