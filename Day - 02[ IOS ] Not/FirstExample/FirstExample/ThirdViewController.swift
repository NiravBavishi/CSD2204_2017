//
//  ThirdViewController.swift
//  FirstExample
//
//  Created by MacStudent on 2017-10-13.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var lblState: UILabel!
    @IBOutlet weak var tbnSwitchState: UIButton!
    
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

    
    
    
    @IBAction func tbnChanegstate(_ sender: UIButton) {
    
        if mySwitch.isOn
        {
            
            lblState.text = "This Switch Is Off"
            mySwitch.setOn(false, animated: true)
            
        }
        else
        {
            
            lblState.text = "This Switch is On"
            mySwitch.setOn(true, animated: true)
            
        }
        
    }
    
    
    
    @IBAction func switchOn(_ sender: UISwitch) {
        
    
        if mySwitch.isOn
        {
            
            lblState.text = "This Switch Is On"
            
        }
        else
        {
            
            lblState.text = "This Switch is Off"
            
        }
        
    }
    
    
}
