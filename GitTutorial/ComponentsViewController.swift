//
//  ViewController.swift
//  GitTutorial
//
//  Created by 邓一鸣 on 2019/7/4.
//  Copyright © 2019 sf. All rights reserved.
//

import UIKit

class ComponentsViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var pressHere: UIButton!
    @IBOutlet weak var progress: UIProgressView!
    @IBOutlet var buttons: [UIButton]!
    var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        let app = UIApplication.shared
//        let delegate = app.delegate as! AppDelegate
//
//        if let salary = delegate.basicSalary {
//            let title = UILabel(frame: CGRect(x: 200, y: 200, width: 300, height: 50))
//            title.text = "Basic salary is \(salary)"
//            view.addSubview(title)
//        }
        
//        pressHere.addTarget(self, action: #selector(showCounter(sender:)), for: UIControl.Event.touchUpInside)
    }
    
    @IBAction func showCounter(_ sender: UIButton) {
        showCounter(sender: sender)
    }
    
    @IBAction func selectColor(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        changeLabelColor((index == 0) ? .black : .red)
//        if index == 0 {
//            counterLabel.textColor = .black
//        } else if index == 1{
//            counterLabel.textColor = .red
//        }
    }
    
    @IBAction func switchColor(_ sender: UISwitch) {
        changeLabelColor(sender.isOn ? .black : .red)
    }
    
    @IBAction func increment(_ sender: UIStepper) {
        counterLabel.text = "Pressed:\(sender.value)"
    }
    
    @IBAction func updateProgress(_ sender: UISlider) {
        progress.progress = sender.value
    }
    
    @IBAction func sayHello(_ sender: Any) {
        print("Hello!")
    }
    
    @IBAction func sayGoodbye(_ sender: Any) {
        print("Goodbye!")
    }
    
    @IBAction func disableButtons(_ sender: Any) {
        for button in buttons {
            button.isEnabled = false
        }
    }
    
    @objc func showCounter(sender: UIButton) {
        counter += 1
        counterLabel.text = "Pressed:\(counter)"
    }
    func changeLabelColor(_ color: UIColor) {
        counterLabel.textColor = color
    }
}

