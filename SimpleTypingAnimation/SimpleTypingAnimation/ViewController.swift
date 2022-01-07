//
//  ViewController.swift
//  SimpleTypingAnimation
//
//  Created by Ignatio Julian on 07/01/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet var textLabel: UILabel!
    
    var words = "Lets create An App"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gesture = UITapGestureRecognizer(target: self, action: #selector(onClickView))
        self.view.addGestureRecognizer(gesture)
    }
    
    @objc func onClickView() {
        for item in words {
            AudioServicesPlaySystemSound(1306)
            textLabel.text! += "\(item)"
            RunLoop.current.run(until: Date()+0.20)
        }
    }
}

