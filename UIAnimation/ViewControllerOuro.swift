//
//  ViewControllerOuro.swift
//  UIAnimation
//
//  Created by Fabrício Guilhermo on 29/05/19.
//  Copyright © 2019 Pedro Cacique. All rights reserved.
//

import UIKit

class ViewControllerOuro: UIViewController {
    
    @IBOutlet weak var card: UIView!
    @IBOutlet weak var titulo: UILabel!
    
    @IBAction func openCard(_ sender: Any)
    {
        UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseInOut], animations:
            {
                self.card.center.x = self.card.frame.width/2
                self.card.center.y = self.card.frame.height/2
                self.card.frame.size = self.view.frame.size
                
                self.titulo.center.x = self.view.center.x
                self.titulo.center.y = self.titulo.frame.height*2.8
            })
    }
    
}
