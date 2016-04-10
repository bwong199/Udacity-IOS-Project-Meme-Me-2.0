//
//  Meme.swift
//  MemeMe
//
//  Created by Ben Wong on 2016-04-08.
//  Copyright © 2016 Ben Wong. All rights reserved.
//

import UIKit

struct Meme {
    var topText : String
    var bottomText : String
    var originalImage : UIImage
    var memedImage : UIImage
    
    
    init(topText: String, bottomText: String, originalImage: UIImage, memedImage: UIImage){
        self.topText = topText
        self.bottomText = bottomText
        self.originalImage = originalImage
        self.memedImage = memedImage

        //        self.uniqueKey = infoDict["uniqueKey"]!
    }
}