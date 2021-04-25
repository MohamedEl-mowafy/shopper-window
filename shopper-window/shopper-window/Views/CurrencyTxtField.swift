//
//  CurrencyTxtField.swift
//  shopper-window
//
//  Created by Mohamed Elmowafy on 25/04/2021.
//

import UIKit


@IBDesignable

class CurrencyTxtField: UITextField {
    
    override  func prepareForInterfaceBuilder() {
        
    }

    override  func awakeFromNib() {
        super.awakeFromNib()
      customizedView()
       
    }
    func customizedView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white ])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
}
