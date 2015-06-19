//
//  ViewController.swift
//  TestMyFramework
//
//  Created by Gene Backlin on 6/16/15.
//  Copyright (c) 2015 MariZack Consulting. All rights reserved.
//

import UIKit
import MyFramework

class ViewController: UIViewController {
    @IBOutlet weak var myTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func enterFramework(sender: AnyObject) {
        let frameworkBundle = NSBundle(identifier: "com.marizack.MyFramework")
        let storyboard = UIStoryboard(name: "MyFramework", bundle: frameworkBundle)
        let controller = storyboard.instantiateViewControllerWithIdentifier("MyNavigationController") as! MyNavigationController
        
        controller.customTitle = self.myTextField.text
        controller.modalTransitionStyle = .FlipHorizontal
        
        self.presentViewController(controller, animated: true, completion: nil)
    }
}

