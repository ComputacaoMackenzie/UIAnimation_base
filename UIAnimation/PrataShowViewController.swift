//
//  PrataShow.swift
//  UIAnimation
//
//  Created by Rayane Xavier on 28/05/19.
//  Copyright © 2019 Pedro Cacique. All rights reserved.
//

import Foundation
import UIKit

class PrataShowViewController: UIViewController {

    @IBOutlet weak var Foguetinho: UIImageView!
    
    @IBOutlet weak var Lua: UIImageView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.Lua.frame.size.width = self.view.frame.width
        self.Lua.center.y = self.view.frame.height
        
        self.Foguetinho.frame.size.height = self.view.frame.height * 0.15
        // tamanho do foguete
        self.Foguetinho.center.x = self.view.center.x
        // centralizando o foguete no centro da view
        self.Foguetinho.center.y = self.view.frame.height - self.Lua.frame.height/1.7
        
    }
        
}
