//
//  ViewController.swift
//  FirstExample
//
//  Created by MacStudent on 2017-10-12.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func loginClick(_ sender: UIButton) {
        
        if(txtUserName.text == "admin@gmail.com" && txtPassword.text == "Nirav123")
        {
            
        print("Hello, My first Click")
            
        }
        else {
            
            print("Hello, Last Click")
            
        }
        
        
        
    }
}



