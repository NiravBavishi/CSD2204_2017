//
//  SliderViewController.swift
//  FirstExample
//
//  Created by MacStudent on 2017-10-13.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import UIKit

class SliderViewController: UIViewController {

    var iFloat: Float?
    var timer: Timer?
    
    @IBOutlet weak var lblstatus: UILabel!
    
    @IBOutlet weak var myProgBar: UIProgressView!
    /*override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }*/

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

    @IBAction func slider(_ sender: UISlider) {
        
        lblstatus.text = "Slider \(Float(Int(sender.value)) / 100)"
        print("\(Float(Int(sender.value)) / 100)")
     myProgBar.progress = (Float(Int(sender.value)) / 100)
        
    }
    
    func showProgress(){
        
        iFloat = 0
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.update), userInfo: nil, repeats: true)
        
        DispatchQueue.global(qos: .utility).async {
            
            DispatchQueue.main.async {
                print(self.iFloat!)
                self.iFloat = self.iFloat! + 0.1
                self.myProgBar?.setProgress(self.iFloat!, animated: true)
            }
        }
    }
    
    @objc func update() {
        if iFloat  == 1 {
            if timer != nil {
                timer!.invalidate()
                timer = nil
            }
        }
        iFloat = iFloat! + 0.1
        myProgBar?.setProgress(iFloat!, animated: true)
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        showProgress()
    }
    
}
