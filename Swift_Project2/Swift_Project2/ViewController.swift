//
//  ViewController.swift
//  Swift_Project2
//
//  Created by tpeng on 16/4/15.
//  Copyright © 2016年 tttpeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var numberLabel: UILabel!
  override func viewDidLoad() {
    super.viewDidLoad()
    self.title = "Counter";
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func reset(sender: AnyObject) {
    
    numberLabel.text = "0"
  }

  @IBAction func longPress(sender: AnyObject) {
    if sender.state == .Changed {
      changeTheNumber()
    }
  }
  @IBAction func tapOrHoldClick(sender: AnyObject) {
    changeTheNumber()
  }
  
  func changeTheNumber() {
    if  let number = Int(numberLabel.text!) {
      numberLabel.text = "\(number + 1)"
    }
  }
}

