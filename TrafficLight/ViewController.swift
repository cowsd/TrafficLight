//
//  ViewController.swift
//  TrafficLight
//
//  Created by Alex Pesenka on 15/05/24.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var changeTrafficLightButton: UIButton!
    
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    private var isFirstPress = true

    private var currentState = CurrentLight.red
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.3
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeTrafficLightButton.layer.cornerRadius = 8
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        createCircleView(redLightView)
        createCircleView(yellowLightView)
        createCircleView(greenLightView)
    }
    
    @IBAction func changeTrafficLightButtonDidTapped(_ sender: UIButton) {
        if isFirstPress {
            sender.setTitle("Next", for: .normal)
            isFirstPress = false
        }
        
        switch currentState {
        case .red:
            redLightView.alpha = lightOn
            greenLightView.alpha = lightOff
            currentState = .yellow
        case .yellow:
            yellowLightView.alpha = lightOn
            redLightView.alpha = lightOff
            currentState = .green
        case .green:
            greenLightView.alpha = lightOn
            yellowLightView.alpha = lightOff
            currentState = .red
        }
        

    }
    
    private func createCircleView(_ view: UIView) {
        view.layer.cornerRadius = view.frame.size.width / 2
    }
    
}

extension ViewController {
    private enum CurrentLight {
        case red, yellow, green
    }
}
