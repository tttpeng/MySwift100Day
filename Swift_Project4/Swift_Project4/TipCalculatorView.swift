//
//  TipCalculatorView.swift
//  Swift_Project4
//
//  Created by tpeng on 16/4/15.
//  Copyright © 2016年 tttpeng. All rights reserved.
//

import UIKit

class TipCalculatorView: UIView {


    @IBOutlet weak var tipRate: UILabel!
    @IBOutlet weak var tipValueLabel: UILabel!
    @IBOutlet weak var totalVauleLabel: UILabel!
    
    var tipModel: TipModel? {
        didSet {
            
            print(tipModel)
            guard let newModel = tipModel else {return}
            self.tipRate.text         = newModel.tipRate
            self.tipValueLabel.text   = newModel.tipValue
            self.totalVauleLabel.text = newModel.totalValue
            
        }

    }
  
}
