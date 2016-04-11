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
        self.imageView.contentMode = UIViewContentMode.ScaleAspectFill
    }
    
    
    
    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(animated)
        
        
        
    }
    
    @IBAction func BackButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
}