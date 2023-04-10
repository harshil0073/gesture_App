//
//  ViewController.swift
//  gesture_App
//
//  Created by Canadore Student on 2023-04-10.
//

import UIKit

class ViewController: UIViewController {
    var tapCount = 0
    
    @IBOutlet var myView: UIView!
    @IBOutlet var tapCountLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(didTap(_:)))
        tapGestureRecognizer.numberOfTapsRequired = 2
        myView.addGestureRecognizer(tapGestureRecognizer)
    }

   
    @IBAction func didTap(_ sender: UITapGestureRecognizer) {
        if sender.numberOfTapsRequired == 1 {
            tapCount+=1
            tapCountLabel.text = "\(tapCount)"
        }
        else if(sender.numberOfTapsRequired == 2){
            tapCount = 0
            tapCountLabel.text = "\(tapCount)"
            print("Double Tap")
            self.performSegue(withIdentifier: "showSecond", sender: self)
        }
    }
    
    @IBAction func didLongPress(_ sender: UILongPressGestureRecognizer) {
        
    }
    
    @IBAction func didPanGesture(_ sender: UIPanGestureRecognizer) {
    }
}

