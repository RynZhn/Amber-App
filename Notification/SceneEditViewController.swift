//
//  ViewController.swift
//  Notification
//
//  Created by Shivani Ganti on 1/20/18.
//  Copyright © 2018 Shivani Ganti. All rights reserved.
//

import UIKit

var name = ""
var notif = " "
var descrip = ""
var interval = ""
var SceneSwitch = false

class SceneEditViewController: UIViewController {

    @IBOutlet weak var SceneTextField: UITextField!
    @IBOutlet weak var SceneName: UILabel!
    
    @IBOutlet weak var NotificationTextField: UITextField!
    @IBOutlet weak var NotificationName: UILabel!
    
    @IBOutlet weak var DescriptionTextField: UITextField!
    @IBOutlet weak var Description: UILabel!
    
    @IBOutlet weak var Reminder: UILabel!
    @IBOutlet weak var Timer: UIDatePicker!
    
    @IBOutlet weak var SilentReminder: UILabel!
   
    @IBOutlet weak var SilentSwitch: UISwitch!
    
    @IBAction func Done(_ sender: Any) {
        
    //}
    
    //@IBAction func getVal () {
    name = SceneTextField.text!
    //(BOOL)textFieldShouldReturn:(SceneTextField)textField;
    notif = NotificationTextField.text!
    descrip = DescriptionTextField.text!
    SceneSwitch = SilentSwitch.isOn
    Timer.datePickerMode = UIDatePickerMode.countDownTimer
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        let TimeValue = dateFormatter.string(from: Timer.date)
        print(name);
        print(notif);
        print(descrip);
        print(TimeValue);
        print(SceneSwitch);
        SceneTextField.text = " "
        NotificationTextField.text = " "
        DescriptionTextField.text = " "
        SilentSwitch.setOn(false, animated: true);
        
    }
    
    @IBAction func Cancel(_ sender: Any) {
        SceneTextField.text = " "
        NotificationTextField.text = " "
        DescriptionTextField.text = " "
        SilentSwitch.setOn(false, animated: true);
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

