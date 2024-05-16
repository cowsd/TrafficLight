//
//  ViewController.swift
//  TrafficLight
//
//  Created by Alex Pesenka on 15/05/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeTrafficLightButton: UIButton!
    
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeTrafficLightButton.layer.cornerRadius = 8
        
        createCircleView(redLightView)
        createCircleView(yellowLightView)
        createCircleView(greenLightView)
    }
    
    func createCircleView(_ view: UIView) {
        view.layer.cornerRadius = view.frame.size.width / 2
        view.clipsToBounds = true
    }

    @IBAction func changeTrafficLightButtonDidTapped(_ sender: UIButton) {
        sender.setTitle("Next", for: .normal)
        
        if redLightView.alpha == 1.0 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1.0
        } else if yellowLightView.alpha == 1.0 {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1.0
        } else if greenLightView.alpha == 1.0 {
            greenLightView.alpha = 0.3
            redLightView.alpha = 1.0
        } else { 
            redLightView.alpha = 1.0
        }
    }
    
}
