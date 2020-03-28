//
//  ViewController.swift
//  MyiOSApp
//
//  Created by Swastik Panda on 15/03/20.
//  Copyright © 2020 Swastik Panda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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

