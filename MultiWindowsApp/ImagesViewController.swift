//
//  ImagesViewController.swift
//  MultiWindowsApp
//
//  Created by Sasha Voronoy on 22.10.2017.
//  Copyright © 2017 Sasha Voronoy. All rights reserved.
//

import UIKit

class ImagesViewController: UIViewController {

    @IBOutlet weak var aspectFitImageView: UIImageView!
    @IBOutlet weak var aspectFillImageView: UIImageView!
    @IBOutlet weak var scaleToFillImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func showAllImages(_ sender: Any) {
        self.aspectFillImageView.isHidden = false
        self.aspectFitImageView.isHidden = false
        self.scaleToFillImageView.isHidden = false
    }
    @IBAction func aspectFitImageHidded(_ sender: Any) {
        self.aspectFitImageView.isHidden = true
    }
    
    @IBAction func aspectFillImageHidded(_ sender: Any) {
        self.aspectFillImageView.isHidden = true
    }
    @IBAction func scaleToFillImageHidded(_ sender: Any) {
        self.scaleToFillImageView.isHidden = true
    }

}
