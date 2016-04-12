//
//  DetailedMemeController.swift
//  MemeMe
//
//  Created by Ben Wong on 2016-03-26.
//  Copyright © 2016 Ben Wong. All rights reserved.
//

import UIKit
import CoreData

class DetailedMemeController: UIViewController{
    
    @IBOutlet var imageView: UIImageView!
    
    var meme : Meme? = nil
    
    override func viewDidLoad() {
        self.navigationController?.navigationBarHidden = true
        self.imageView.image = meme!.memedImage
        self.imageView.contentMode = UIViewContentMode.ScaleAspectFit
    }
    
    
    
    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(animated)
        
        
        
    }
    
    @IBAction func BackButton(sender: AnyObject) {
        
        let navigationViewController = self.navigationController?.viewControllers[0]
        
        self.navigationController?.popToViewController(navigationViewController!, animated: true)
    }
    
    
}