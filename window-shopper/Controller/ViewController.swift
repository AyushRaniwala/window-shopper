//
//  ViewController.swift
//  window-shopper
//
//  Created by Ayush Raniwala on 24/08/20.
//  Copyright © 2020 Ayush Raniwala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var hourLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5782525589, blue: 0, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(ViewController.calculate), for: .touchUpInside)
        
        priceTxt.inputAccessoryView = calcBtn
        wageTxt.inputAccessoryView = calcBtn
        
        numberLabel.isHidden = true
        hourLabel.isHidden = true
    }

    @objc func calculate(){
        if let wageTxt = wageTxt.text , let priceTxt = priceTxt.text{
            if let wage = Double(wageTxt) , let price = Double(priceTxt){
                view.endEditing(true)
                numberLabel.isHidden = false
                hourLabel.isHidden = false
                numberLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }

    @IBAction func clearCalc(_ sender: Any) {
        numberLabel.isHidden = true
        hourLabel.isHidden = true
        priceTxt.text = ""
        wageTxt.text = ""
        
    }
}

