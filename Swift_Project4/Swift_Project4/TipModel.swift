//
//  TipModel.swift
//  Swift_Project4
//
//  Created by tpeng on 16/4/15.
//  Copyright © 2016年 tttpeng. All rights reserved.
//

import UIKit

class TipModel: NSObject {
    var tipRate: String?
    var tipValue: String?
    var totalValue: String?
    
    init(tipRate: String, tipValue: String, totalValue: String) {
        self.tipRate    = tipRate;
        self.tipValue   = tipValue;
        self.totalValue = totalValue;
    }

}
