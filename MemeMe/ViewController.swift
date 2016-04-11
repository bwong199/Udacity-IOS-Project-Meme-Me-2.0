//
//  ViewController.swift
//  MemeMe
//
//  Created by Ben Wong on 2016-03-24.
//  Copyright © 2016 Ben Wong. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet var tableView: UITableView!
    
    var selectedItem: Meme? = nil
    
    var memes : [Meme] =  GlobalVariables.memeList
    
    var selectedMeme: Meme? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        //        makeSampleProduct()
        self.tableView.reloadData()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        for x : Meme in GlobalVariables.memeList {
            print("\(GlobalVariables.memeList.count) items")
            print("New List")
            print(x)
        }
        
        self.tableView.reloadData()
    }
    
    
    override func viewWillAppear(animated: Bool) {
        self.tableView.reloadData()
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return GlobalVariables.memeList.count
//                return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)
        
        let meme = GlobalVariables.memeList[indexPath.row]
        
        cell.textLabel!.text = meme.topText + " " + meme.bottomText
 
        cell.imageView!.image = meme.memedImage
//                cell.imageView!.image = UIImage(named: "darthvader@2x-iphone.png")
//               cell.textLabel!.text = "Nike kicks"
        
        
        return cell
    }
    
    
        func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
            self.selectedItem = GlobalVariables.memeList[indexPath.row]
    
            self.performSegueWithIdentifier("showMemeSegue", sender: self)
        }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showMemeSegue" {
            
            let destinationVC =   segue.destinationViewController as! DetailedMemeController
            
            destinationVC.meme = self.selectedItem
            
        }
    }
    
    
    
    
}

