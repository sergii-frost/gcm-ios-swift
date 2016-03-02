//
//  ViewController.swift
//  GCMTest
//
//  Created by Sergii Nezdolii on 29/02/16.
//  Copyright © 2016 FrostDigital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: IBOutlets 
    
    @IBOutlet weak var aikSwitch: UISwitch!
    @IBOutlet weak var difSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func aikSwitchChanged(sender: AnyObject?) {
        if aikSwitch != nil {
            let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            if aikSwitch.on {
                appDelegate.subscribeToTopic(appDelegate.subscriptionTopicAIK)
            } else {
                appDelegate.unsubscribeFromTopic(appDelegate.subscriptionTopicAIK)
            }
        }
    }
    
    @IBAction func difSwitchChanged(sender: AnyObject?) {
        if difSwitch != nil {
            let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            if difSwitch.on {
                appDelegate.subscribeToTopic(appDelegate.subscriptionTopicDIF)
            } else {
                appDelegate.unsubscribeFromTopic(appDelegate.subscriptionTopicDIF)
            }
        }
    }


}

