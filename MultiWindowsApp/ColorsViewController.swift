//
//  ColorsViewController.swift
//  MultiWindowsApp
//
//  Created by Sasha Voronoy on 22.10.2017.
//  Copyright © 2017 Sasha Voronoy. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redColorLabel: UILabel!
    @IBOutlet weak var greenColorLabel: UILabel!
    @IBOutlet weak var blueColorLabel: UILabel!
    
    
    var colors : [UISlider] = []
    var labels : [UILabel] = []
    
    let min : Int = 0
    let medium : Int = 127
    let max : Int = 255
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.colors = [self.redSlider, self.greenSlider, self.blueSlider]
        self.labels = [self.redColorLabel, self.greenColorLabel, self.blueColorLabel]
        
        colorView.backgroundColor = UIColor.init(red: CGFloat(medium) / 255, green: CGFloat(medium) / 255, blue: CGFloat(medium) / 255, alpha: 1)
    }
    
    @IBAction func eventSliderChanged(_ sender: Any) {
        sliderChanged()
    }
    
    @IBAction func minButtonPressed(_ sender: Any) {
        colorView.backgroundColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 1)
        massColorsAction(value: Float(min))
        massLabelsAction(text: String(min))
    }
    @IBAction func mediumButtonPressed(_ sender: Any) {
        colorView.backgroundColor = UIColor.init(red: 127 / 255, green: 127 / 255, blue: 127 / 255, alpha: 1)
        massColorsAction(value: Float(medium))
        massLabelsAction(text: String(medium))
        
    }
    @IBAction func maxButtonPressed(_ sender: Any) {
        colorView.backgroundColor = UIColor.init(red: 1, green: 1, blue: 1, alpha: 1)
        massColorsAction(value: Float(max))
        massLabelsAction(text: String(max))
    }
    
    func massColorsAction(value:Float){
        
        for color in self.colors{
            color.setValue(value, animated: true)
        }
    }
    
    func massLabelsAction(text: String){
        for label in self.labels{
            label.text = text
        }
    }
    
    func sliderChanged(){
        colorView.backgroundColor = UIColor.init(red: CGFloat(redSlider.value) / 255, green: CGFloat(greenSlider.value) / 255, blue: CGFloat(blueSlider.value) / 255, alpha: 1)
        changeLabels()
    }
    
    func changeLabels(){
        redColorLabel.text = "\(Int(redSlider.value))"
        greenColorLabel.text = "\(Int(greenSlider.value))"
        blueColorLabel.text = "\(Int(blueSlider.value))"
    }
    

}
