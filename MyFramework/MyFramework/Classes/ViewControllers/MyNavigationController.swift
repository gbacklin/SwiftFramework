//
//  MyNavigationController.swift
//  
//
//  Created by Gene Backlin on 6/16/15.
//
//

import UIKit

public class MyNavigationController: UINavigationController {
    
    public var customTitle: String!

    override public func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var rootTableViewController: RootTableViewController = self.topViewController as! RootTableViewController
        rootTableViewController.customTitle = customTitle
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
