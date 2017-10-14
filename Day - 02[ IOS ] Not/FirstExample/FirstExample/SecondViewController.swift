//
//  SecondViewController.swift
//  FirstExample
//
//  Created by MacStudent on 2017-10-13.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    @IBAction func btnShowAlert(_ sender: UIButton) {
        
        // For Create Alert
        let alert  =
            
            UIAlertController(title: "Message", message: "Welcome To IOS Programming", preferredStyle: UIAlertControllerStyle.actionSheet)
        
        
        // Add Ok Button
        let actionAdd = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
        
        alert.addAction(actionAdd)
        
        // Add cancel Button
        let actionCancel = UIAlertAction(title : "Cancel", style : UIAlertActionStyle.cancel, handler : nil)
        
        alert.addAction(actionCancel)
        
        // Add button try Again
        let actionTryAgain = UIAlertAction(title : "Try Again", style : UIAlertActionStyle.destructive, handler: nil)
        
        alert.addAction(actionTryAgain)
        
        // Add Confirm Button
        let actionConfirm = UIAlertAction(title : "Confirm", style : UIAlertActionStyle.default, handler : nil)
        
        alert.addAction(actionConfirm)
        
        let actionHandler = UIAlertAction(title: "Okay",
                                          style: UIAlertActionStyle.default,
                                          handler: {
                                            
                                                        (alert: UIAlertAction!) in print("This Okey From Alert")
                                                                                    print("It's Me")
                                            
                                                    }
                                            )
        
        alert.addAction(actionHandler)
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
}
