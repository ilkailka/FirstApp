//
//  ViewController.swift
//  FirstApp
//
//  Created by Ильмира Гамбарова on 19.07.2023.
//

import UIKit

enum Light {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    private var light: Light?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 70
        yellowLight.layer.cornerRadius = 70
        greenLight.layer.cornerRadius = 70
        
    }
    
    @IBAction func startButtonDidTapped() {
        startButton.setTitle("NEXT", for: .normal)
        switch light{
        case .red:
            redLight.alpha = 1
            greenLight.alpha = 0.3
            light = .yellow
        case .yellow:
            yellowLight.alpha = 1
            redLight.alpha = 0.3
            light = .green
        case .green:
            greenLight.alpha = 1
            yellowLight.alpha = 0.3
            light = .red
        default:
            light = .red
            redLight.alpha = 1
            greenLight.alpha = 0.3
            light = .yellow
        }
    }
    
    
}

