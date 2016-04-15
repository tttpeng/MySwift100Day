//
//  ViewController.swift
//  Swift_1Day
//
//  Created by tpeng on 16/4/15.
//  Copyright © 2016年 tttpeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var numberLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func resetClick(sender: AnyObject) {
    
    numberLabel.text = "0";
  }
  @IBAction func tapClick(sender: UIButton) {
    
    print(Int(numberLabel.text!));
    
    numberLabel.text = String(Int(numberLabel.text!)! + 1);
    
    
  }

}

