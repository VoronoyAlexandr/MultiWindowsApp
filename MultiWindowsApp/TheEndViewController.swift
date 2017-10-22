//
//  TheEndViewController.swift
//  MultiWindowsApp
//
//  Created by Sasha Voronoy on 22.10.2017.
//  Copyright © 2017 Sasha Voronoy. All rights reserved.
//

import UIKit

class TheEndViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func toTheRootController(_ sender: Any) {
        self.navigationController!.popToRootViewController(animated: true)
    }

}
