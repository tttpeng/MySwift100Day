//
//  ViewController.swift
//  Swift_Project7
//
//  Created by tpeng on 16/4/20.
//  Copyright © 2016年 tttpeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let secondController =  segue.destinationViewController as! SecondViewController
        
        secondController.message = textView.text

    }


}

