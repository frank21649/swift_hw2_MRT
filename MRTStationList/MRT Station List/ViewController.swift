//
//  ViewController.swift
//  MRT Station List
//
//  Created by Frank Wang on 2016/5/5.
//  Copyright © 2016年 Frank Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    let banNanArray = ["永春","後山埤","昆陽","南港","南港展覽館"]
    let tanSuaArray = ["信義安和","大安","大安森林公園","東門","中正紀念堂"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return banNanArray.count
        }else{
            return tanSuaArray.count
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        if indexPath.section == 0{
            cell.textLabel?.text = "\(banNanArray[indexPath.row])"
        }else{
            cell.textLabel?.text = "\(tanSuaArray[indexPath.row])"
        }
        return cell
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "板南線"
        }else{
            return "淡水信義線"
        }
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("showDetail", sender: indexPath.row)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let selectedNumber = sender
        let detailVC = segue.destinationViewController
        detailVC.
    }
    
    
  
    
    

}

