//
//  ViewController.swift
//  Swift_Project9
//
//  Created by tpeng on 16/4/20.
//  Copyright © 2016年 tttpeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    var imageView: UIImageView?

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.translucent = true
        
        
        let leftBarItem = UIBarButtonItem(image: UIImage(named: "back"), style: .Plain, target: self, action: nil)
        let rightItem   = UIBarButtonItem(barButtonSystemItem: .Camera, target: self, action: #selector(openCamera))

        navigationItem.leftBarButtonItem = leftBarItem
        navigationItem.rightBarButtonItem = rightItem
        
        
        let textView = UITextView(frame: CGRectMake(0, 64, UIScreen.mainScreen().bounds.size.width, 150))
        view.addSubview(textView)
        
        let imageView = UIImageView(frame: CGRectMake(0, 200, UIScreen.mainScreen().bounds.size.width, UIScreen.mainScreen().bounds.size.width))
        view.addSubview(imageView)
        imageView.contentMode = .ScaleToFill
        self.imageView = imageView

        self.automaticallyAdjustsScrollViewInsets = false
        
    }

    
    func openCamera()  {
        
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        self.presentViewController(imagePickerController, animated: true, completion: nil)
       
        
    }
    
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        
        
        picker.dismissViewControllerAnimated(true, completion: nil)
        self.imageView?.image = image
        
        
        
    }
    


    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

