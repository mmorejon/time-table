//
//  ViewController.swift
//  TimeTable
//
//  Created by Reynaldo on 10/6/15.
//  Copyright © 2015 Reynaldo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var pickerView1: UIPickerView!
    
    @IBOutlet weak var pickerView2: UIPickerView!
    
    @IBOutlet weak var labelResult: UILabel!
    
    var timeTable: TimeTable!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        pickerView1.selectRow(4, inComponent: 0, animated: false)
        pickerView2.selectRow(4, inComponent: 0, animated: false)
        labelResult.text = "16"
        timeTable = TimeTable()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(row)"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let val1 = pickerView1.selectedRow(inComponent: 0)
        let val2 = pickerView2.selectedRow(inComponent: 0)
        
        labelResult.text = "\(timeTable.multiply(val1, b: val2))"
    }
    
}

