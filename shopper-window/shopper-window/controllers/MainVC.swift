//
//  ViewController.swift
//  shopper-window
//
//  Created by Mohamed Elmowafy on 25/04/2021.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet var wagetxt: CurrencyTxtField!
    @IBOutlet var priceTxt: CurrencyTxtField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.3652330041, blue: 0, alpha: 0.816956779)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        wagetxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
    }
    @objc func calculate() {
        print("We got here ")
    }

}

