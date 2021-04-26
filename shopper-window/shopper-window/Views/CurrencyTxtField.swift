//
//  CurrencyTxtField.swift
//  shopper-window
//
//  Created by Mohamed Elmowafy on 25/04/2021.
//

import UIKit


@IBDesignable

class CurrencyTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currancyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currancyLbl.backgroundColor = #colorLiteral(red: 0.785502851, green: 0.7808347344, blue: 0.7890921235, alpha: 0.688651887)
        currancyLbl.textAlignment = .center
        currancyLbl.textColor = #colorLiteral(red: 0.3922432661, green: 0.3923140168, blue: 0.3922339678, alpha: 0.8933893671)
        currancyLbl.layer.cornerRadius = 5.0
        currancyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currancyLbl.text = formatter.currencySymbol
        addSubview(currancyLbl)
    }
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
        clipsToBounds = true
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white ])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
}
