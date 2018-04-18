//
//  ViewController.swift
//  Alram Tirmr
//
//  Created by D7703_11 on 2018. 4. 18..
//  Copyright © 2018년 kimjin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myDatepicker: UIDatePicker!
   @IBOutlet weak var alarmTime: UILabel!
   @IBOutlet weak var currentTimeLabel: UILabel!
    var  myTimer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
         let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm:ss"
      
    }

    @IBAction func DatepickerValueChanged(_ sender: Any) {
       let myAlarmTime = myDatepicker.date
        print(myAlarmTime)
     alarmTime.text = String (describing: myAlarmTime)
     
    }
    
    @IBAction func stopAlert(_ sender: Any) {
        view.backgroundColor = UIColor.blue
    }
}

