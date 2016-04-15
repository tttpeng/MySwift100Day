//
//  ViewController.swift
//  Swift_Project3
//
//  Created by tpeng on 16/4/15.
//  Copyright © 2016年 tttpeng. All rights reserved.
//

import UIKit
import iAd

class ViewController: UIViewController,ADBannerViewDelegate  {

  @IBOutlet weak var iAdView: ADBannerView!
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    self.canDisplayBannerAds = true
    self.iAdView.delegate = self;
    self.iAdView.backgroundColor = UIColor.redColor();
    self.iAdView.hidden = true

  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func bannerViewDidLoadAd(banner: ADBannerView!) {
    banner.hidden = false
  }

  func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError error: NSError!) {
    print("失败\(error)")
  }

}

