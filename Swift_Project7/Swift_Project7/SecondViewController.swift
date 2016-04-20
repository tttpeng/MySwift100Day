//
//  SecondViewController.swift
//  Swift_Project7
//
//  Created by tpeng on 16/4/20.
//  Copyright © 2016年 tttpeng. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var message: String?

    @IBOutlet weak var messageTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
                
        messageTextView.text = message
        messageTextView.editable = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
