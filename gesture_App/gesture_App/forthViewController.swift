//
//  forthViewController.swift
//  gesture_App
//
//  Created by Canadore Student on 2023-04-10.
//

import UIKit

class forthViewController: UIViewController {
    private let myView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .systemPurple
        return myView
        
    }()
    private let size: CGFloat = 200
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(myView)
        myView.frame = CGRect(x: 0, y: 0, width: size, height: size)
        myView.center = view.center
    }
    

    
    @IBAction func didPinch(_ sender: UIPinchGestureRecognizer) {
        if(sender.state == .changed){
            let scale = sender.scale
            myView.frame = CGRect(x: 0, y: 0, width: size*scale, height: size*scale)
            myView.center = view.center
            
        }
    }
    
}
