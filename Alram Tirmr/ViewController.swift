//
//  ViewController.swift
//  Alram Tirmr
//
//  Created by D7703_11 on 2018. 4. 18..
//  Copyright © . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myDatePicker: UIDatePicker!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var currentTimeLabel: UILabel!
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // initial Picker Time setting
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm:ss"
        timeLabel.text = formatter.string(from: myDatePicker.date)
        
        myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(myTimer) in
            self.updateTime()
        })
    }
    
    func updateTime() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm:ss"
        currentTimeLabel.text = formatter.string(from: date)
        
        if currentTimeLabel.text == timeLabel.text {
            view.backgroundColor = UIColor.red
        }
    }
    
    @IBAction func changeDatePicker(_ sender: Any) {
        print("change Date Picker")
        print(myDatePicker.date)
        
        // dateFormat
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm:ss"
        timeLabel.text = formatter.string(from: myDatePicker.date)
        
    }
    
    @IBAction func stopAlert(_ sender: Any) {
        view.backgroundColor = UIColor.white
    }
}
