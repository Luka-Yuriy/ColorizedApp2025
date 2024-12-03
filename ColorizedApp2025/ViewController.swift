//
//  ViewController.swift
//  ColorizedApp2025
//
//  Created by Yurii Luka on 03.12.2024.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - IBActions
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var colorView: UIView!
    
    //MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        redSliderAction()
        greenSliderAction()
        blueSliderAction()
        changingColor()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - IBActions
    @IBAction func redSliderAction() {
        redValueLabel.text = String(format: "%.2f", (redSlider.value))
        changingColor()
    }
    
    @IBAction func greenSliderAction() {
        greenValueLabel.text = String(format: "%.2f", (greenSlider.value))
        changingColor()
    }
    
    @IBAction func blueSliderAction() {
        blueValueLabel.text = String(format: "%.2f", (blueSlider.value))
        changingColor()
    }
    
    //MARK: - Private methods
    private func changingColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
}


