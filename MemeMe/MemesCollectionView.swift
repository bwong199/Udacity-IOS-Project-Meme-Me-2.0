//
//  MemesCollectionView.swift
//  MemeMe
//
//  Created by Ben Wong on 2016-03-26.
//  Copyright © 2016 Ben Wong. All rights reserved.
//

import UIKit
import CoreData


class MemesCollectionView: UIViewController,  UICollectionViewDataSource, UICollectionViewDelegate{
    
    
    @IBOutlet var collectionView: UICollectionView!
    
    let reuseIdentifier = "cell"
    
    var memes : [Meme] = GlobalVariables.memeList
    
    var selectedItem: Meme? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for x : Meme in GlobalVariables.memeList {
            print(x)
        }
        
        //        self.collectionView.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        self.collectionView.reloadData()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        self.collectionView.reloadData()
    }
    
    override func viewDidAppear(animated: Bool) {
        self.collectionView.reloadData()
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! MyCollectionViewCell
        
        let meme = GlobalVariables.memeList[indexPath.row]
        
        cell.myImage!.image = meme.memedImage
        
        return cell
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.memes.count
        //        return 10
    }
    
    //    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
    //        // handle tap events
    //        print("You selected cell #\(indexPath.item)!")
    //
    //        self.selectedItem =  GlobalVariables.memeList[indexPath.row]
    //
    //        self.performSegueWithIdentifier("showMemeSegue", sender: self)
    //    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showMemeSegue" {
            
            let destinationVC =   segue.destinationViewController as! DetailedMemeController
            
            destinationVC.meme = self.selectedItem
            
        }
    }
    
    
}