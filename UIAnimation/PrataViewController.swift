//
//  Prata.swift
//  UIAnimation
//
//  Created by Rayane Xavier on 27/05/19.
//  Copyright © 2019 Pedro Cacique. All rights reserved.
//

import Foundation
import UIKit

class PrataViewController: UIViewController {
    
    @IBOutlet weak var Foguetinho: UIImageView!
    
    @IBOutlet weak var Lua: UIImageView!
    

    @IBOutlet weak var textFildNome: UITextField!
    
    
    @IBOutlet weak var textFildSenha: UITextField!
    
    @IBOutlet weak var ButtonLoginOutlet: UIButton!
    
    @IBAction func ButtonLogin(_ sender: Any) {

        let myFoguetinho = UIBezierPath()
        myFoguetinho.move(to: CGPoint(x: self.Foguetinho.center.x, y: self.view.frame.height - self.Lua.frame.height/4))
        myFoguetinho.addLine(to: CGPoint(x: self.view.frame.width/2, y: self.Foguetinho.frame.height/1.25))
        
        let mylinhadoFoguetinho = CAShapeLayer()
        mylinhadoFoguetinho.strokeColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        mylinhadoFoguetinho.lineWidth = 2
        mylinhadoFoguetinho.path = myFoguetinho.cgPath
        mylinhadoFoguetinho.strokeStart = 1
        mylinhadoFoguetinho.zPosition = -1
        view.layer.addSublayer(mylinhadoFoguetinho)
        
        let myEndAnimation = CABasicAnimation(keyPath: "strokeEnd")
        myEndAnimation.fromValue = 0.2
        myEndAnimation.toValue = 1.0
        
        //E em seguida, a que apaga
        let myStartAnimation = CABasicAnimation(keyPath: "strokeStart")
        myStartAnimation.fromValue = 0.0
        myStartAnimation.toValue = 0.8
        
        let animationGroup = CAAnimationGroup()
        animationGroup.animations = [myStartAnimation, myEndAnimation]
        animationGroup.duration = 1.25
        
        
        mylinhadoFoguetinho.add(animationGroup, forKey: "drawLine")
        view.layer.addSublayer(mylinhadoFoguetinho)
        
        UIView.animate(withDuration: 1.25, delay: 0, options: [.curveLinear], animations: {
            
            self.Foguetinho.center.y = self.Foguetinho.frame.height/1.25
            
            
        }, completion: {finished in
            
            if let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PrataShow") as? PrataShowViewController {
                self.present(viewController, animated: true, completion: nil)
            }
            
        })
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        
        self.textFildNome.center.x = self.view.center.x
        self.textFildNome.center.y = self.view.frame.height/2.20
        
        self.textFildSenha.center.x = self.view.center.x
        self.textFildSenha.center.y = self.view.frame.height/1.65
        
    }

    override func viewWillAppear(_ animated: Bool) {
        // chamada para arrumar o conteudo antes de aparecer na tela
        self.Lua.frame.size.width = self.view.frame.width
        //tamanho do planeta
        self.Lua.center.y = self.view.frame.height
        // posicao do planeta
        
        UIView.animate(withDuration: 1.25) {
            self.Foguetinho.frame.size.height = self.view.frame.height * 0.15
            // tamanho do foguete
            self.Foguetinho.center.x = self.view.center.x
            // centralizando o foguete no centro da view
            self.Foguetinho.center.y = self.view.frame.height - self.Lua.frame.height/1.7
            
            self.textFildNome.center.x = self.view.frame.minX + self.textFildNome.frame.width + self.textFildNome.frame.width
            
            self.textFildNome.center.y = self.view.frame.height/2.20
            
            self.textFildSenha.center.x = self.view.frame.minX - self.textFildNome.frame.width
            self.textFildSenha.center.y = self.view.frame.height/1.65
        }
    
    }
}
