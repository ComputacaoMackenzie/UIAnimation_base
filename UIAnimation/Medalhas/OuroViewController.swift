//
//  OuroViewController.swift
//  UIAnimation
//
//  Created by Matheus Gois on 27/05/19.
//  Copyright © 2019 Pedro Cacique. All rights reserved.
//

import UIKit

class OuroViewController: UIViewController {

    @IBOutlet weak var card: UIView!
    let animateDuration:TimeInterval = 1.5
    
    @IBAction func Button(_ sender: Any) {
        UIView.animate(withDuration: self.animateDuration, delay: 0, options: [.curveEaseInOut], animations: {
            
            
            self.card.frame.size = self.view.frame.size
            self.card.center.x = self.card.frame.width/2
            self.card.center.y = self.card.frame.height/2
            
//            self.card.frame.size = self.view.frame.size.y
            
        }) { (finished) in
            print("here")
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func viewDidAppear(_ animated: Bool) {
        
    }
}
