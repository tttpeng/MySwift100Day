//
//  ViewController.swift
//  Swift_Project4
//
//  Created by tpeng on 16/4/15.
//  Copyright © 2016年 tttpeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var tipCalculatorView: TipCalculatorView!
    
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var slider: UISlider!
    
    
    var originalPrice: Double!
    
    
    @IBAction func silderValueChange(sender: UISlider) {
        calculatorTip()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        originalPrice = 0
        slider.minimumValue = 0.1
        slider.maximumValue = 0.9
        let toolbar = UIToolbar();
        let finishItem = UIBarButtonItem(barButtonSystemItem: .Done, target: self, action:#selector(finishInput))
        let flexItem = UIBarButtonItem(barButtonSystemItem: .FlexibleSpace, target: self, action: nil)
        toolbar.setItems([flexItem,finishItem], animated: true)
        
        toolbar.sizeToFit()
        self.priceTextField.inputAccessoryView = toolbar;
        
    }
    
    private var tipModel: TipModel?
    func finishInput() {
        priceTextField.endEditing(true)
        
        guard let price =  Double(priceTextField.text!) else {
            
            let alertController = UIAlertController(title: "错误", message: "输入错误，请重新输入", preferredStyle: .Alert)
            let cancelAction = UIAlertAction(title: "确定", style: .Cancel, handler: {(action: UIAlertAction!) in
                self.priceTextField.text = nil
                self.originalPrice = 0;
            })
            alertController.addAction(cancelAction)
            self.presentViewController(alertController, animated: true, completion: {})
            return
        }
        originalPrice = price;
        priceTextField.text = "$\(String(format: "%.2f", price))"
        
        calculatorTip()
        
        
    }
    
    func calculatorTip() {
        
        let tip = Int(slider.value * 100)
        
        let newTipModel = TipModel(tipRate: "Tip(\(tip)%)",
                                   tipValue: String(format: "%.2f", originalPrice * Double(slider.value)),
                                   totalValue: String(format: "%.2f", originalPrice * (1 + Double(slider.value))));
        tipCalculatorView.tipModel = newTipModel
    }
    
    
}

