//
//  ViewController.swift
//  YYFPSLabel
//
//  Created by song on 16/8/15.
//  Copyright © 2016年 song. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "a")
        
        
        let fpsLabel = FPSLabel.init(frame: CGRectMake(0, 0, 20 , 44))
        view.addSubview(fpsLabel)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController{
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("a")!
        
        cell.textLabel?.text = "zhafdafdafadfdafdssfasdfsdafdfdsfdas"
        
        cell.imageView?.image = UIImage.init(named: "1.jpg")
        
        return cell
        
        
    }
    
}

