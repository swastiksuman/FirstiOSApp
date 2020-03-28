//
//  ViewController.swift
//  MyiOSApp
//
//  Created by Swastik Panda on 15/03/20.
//  Copyright © 2020 Swastik Panda. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let dailyTasks = ["Wake Up", "Excercise", "Breakfast", "Code"]
    
    let weeklyTasks = ["Grocery", "Tennis"]
    
    let monthlyTasks = ["Electricity Bill", "House Rent", "Telephone Bill"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section{
        case 0:
            return dailyTasks.count
        case 1:
            return weeklyTasks.count
        case 2:
            return monthlyTasks.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        switch indexPath.section{
        case 0:
            cell.textLabel?.text = dailyTasks[indexPath.row]
        case 1:
            cell.textLabel?.text = weeklyTasks[indexPath.row]
        case 2:
            cell.textLabel?.text=monthlyTasks[indexPath.row]
        default:
            cell.textLabel?.text = "Error!"
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section{
        case 0:
            return "Daily Tasks"
        case 1:
            return "Weekly Tasks"
        case 2:
            return "Monthly Tasks"
        default:
            return "Error!"
        }
    }

    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var modeSwitcher: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func enableDarkMode(_ sender: Any) {
        let subViews = view.subviews
        if(view.backgroundColor == UIColor.systemBackground){
                view.backgroundColor = UIColor.darkGray
            for item in subViews{
                if(item is UILabel){
                    let thisLabel = item as! UILabel
                    thisLabel.textColor = UIColor.white
                }
            }
            modeSwitcher.setTitle("Light Mode", for: .normal)
        }else{
        view.backgroundColor = UIColor.systemBackground
            for item in subViews{
                if(item is UILabel){
                    let thisLabel = item as! UILabel
                    thisLabel.textColor = UIColor.black
                }
            }
            modeSwitcher.setTitle("Dark Mode", for: .normal)
        }
    }
    
}

