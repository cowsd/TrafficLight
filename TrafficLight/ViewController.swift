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
        
        // Do any additional setup after loading the view.
    }
    
    func createCircleView(_ view: UIView) {
        view.layer.cornerRadius = view.frame.size.width / 2
    }


}

