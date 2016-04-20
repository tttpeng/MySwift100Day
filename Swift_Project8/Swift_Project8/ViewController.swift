//
//  ViewController.swift
//  Swift_Project8
//
//  Created by tpeng on 16/4/20.
//  Copyright © 2016年 tttpeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let leftItem = UIBarButtonItem(image: UIImage(named: "back"), style: .Plain, target: self, action: nil)
        let rightItme = UIBarButtonItem(title: "Done", style: .Done, target: self, action: nil)
        navigationItem.leftBarButtonItem = leftItem;
        navigationItem.rightBarButtonItem = rightItme
        
        textView.becomeFirstResponder()
        let swipeGes = UISwipeGestureRecognizer(target: self, action: #selector(swipeDown))
        swipeGes.direction = .Down
        textView.addGestureRecognizer(swipeGes)
        
    }
    
    func swipeDown()  {
        textView.resignFirstResponder()
    }

}

