//
//  ViewController.swift
//  AmberApp
//
//  Created by Avi Maitra on 1/13/18.
//  Copyright © 2018 QL+. All rights reserved.
//

import UIKit
import Foundation

var count=3
var SceneNameFill = ["Home", "Class", "Movies"]
var SetSceneFill = [false, false, false]
var CellNum = [0,1,2]

class SceneCell: UITableViewCell
{
    @IBOutlet weak var SceneName: UILabel!
    
    @IBOutlet weak var SetScene: UISwitch!
    
    func setSwitch(switchState: Bool){
        SetScene.setOn(switchState, animated: false)
    }
    @IBAction func ChangeScene(_ sender: Any)
    {
        //if (SetScene.isOn==true)
       // {
               //Set all code on notifications here
        //}
       // else
       // {
            //disable all notifications
       // }
        SetSceneFill = SwitchToggle(SceneName: SceneName.text!)
        //self.reloadInputViews()
       //func reloadData()
 
        print (SetSceneFill)
    }
    
}

class ViewController: UIViewController, UITableViewDataSource {

    @IBAction func AddScene(_ sender: Any)
    {
        performSegue(withIdentifier: "segue", sender: self)
    }
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView.register(UINib(nibName: "SceneCell", bundle: nil), forCellReuseIdentifier: "CustomScene")    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SceneNameFill.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: SceneCell = self.tableView.dequeueReusableCell(withIdentifier: "CustomScene") as! SceneCell
        cell.SceneName.text = SceneNameFill[indexPath.row]
        cell.SetScene.isOn = SetSceneFill[indexPath.row]
        //self.tableView.reloadData()
        //self.tableView.beginUpdates()
        //self.tableView.beginUpdates()
        
        //self.tableView.reloadRows(at: [indexPath], with: UITableViewRowAnimation.automatic)
        //self.tableView.endUpdates()
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            // remove the item from the data model
            SceneNameFill.remove(at: indexPath.row)
            SetSceneFill.remove(at: indexPath.row)
            count=count-1
            
            // delete the table view row
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        } else if editingStyle == .insert {
            // Not used in our example, but if you were adding a new row, this is where you would do it.
        }
    }
    
   
}
