//
//  ViewController.swift
//  Swift_Project6
//
//  Created by tpeng on 16/4/20.
//  Copyright © 2016年 tttpeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showTimeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        showCurrentDate()
    }

    @IBAction func refresh(sender: UIButton) {
        showCurrentDate()
    }
    
    func showCurrentDate() {
        let currentDate = NSDate();
        let dateFormater = NSDateFormatter()
        dateFormater.dateStyle = .MediumStyle
        dateFormater.timeStyle = .MediumStyle
        showTimeLabel.text = dateFormater.stringFromDate(currentDate)
    }

}

