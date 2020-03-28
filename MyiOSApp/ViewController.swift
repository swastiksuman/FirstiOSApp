//
//  ViewController.swift
//  MyiOSApp
//
//  Created by Swastik Panda on 15/03/20.
//  Copyright © 2020 Swastik Panda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func enableDarkMode(_ sender: Any) {
        if(view.backgroundColor == UIColor.systemBackground){
                view.backgroundColor = UIColor.darkGray
                
        }else{
        view.backgroundColor = UIColor.systemBackground
        }
    }
    
}

