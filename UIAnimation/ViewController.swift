//
//  ViewController.swift
//  UIAnimation_base
//
//  Created by Pedro Cacique on 27/05/19.
//  Copyright © 2019 Pedro Cacique. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Lua: UIImageView!
    @IBOutlet weak var Foguetinho: UIImageView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 2.0, delay: 1, options: [ .curveEaseOut], animations: {
            // options: opcional de colocar
            // repeat: repete a animacao, autoreverse: faz o efeito contrario da animacao, curveEaseIn: comeca lento e depois acelera, curveEaseOut: comeca rapido e depois desacelera, curveEaseInOut: suave, acelera, suave.
            self.Foguetinho.center.y = self.view.frame.height - self.Lua.frame.height/2
            self.Foguetinho.transform = self.Foguetinho.transform.rotated(by: .pi)
            // transforma: transforma o objeto durante a animacao, rotated: roda em 180 gruas o objeto
            self.Foguetinho.transform = self.Foguetinho.transform.scaledBy(x: 2, y: 2)
            // aumenta o objeto pelo dobro do tamanho
    }, completion: {finished in
    //            self.Foquetinho.image = UIImage(named: "rocket2.png")
        self.outraAnimacao()

    })
}


    func outraAnimacao(){
        UIView.animate(withDuration: 2.0, animations: {
            self.Foguetinho.center.x = self.view.frame.width
            self.Foguetinho.transform = self.Foguetinho.transform.rotated(by: 1.0 * .pi)
        })
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // chamada para arrumar o conteudo antes de aparecer na tela
        self.Lua.frame.size.width = self.view.frame.width
        //tamanho do planeta
        self.Lua.center.y = self.view.frame.height
        // posicao do planeta
        
        
        self.Foguetinho.frame.size.height = self.view.frame.height * 0.15
        // tamanho do foguete
        self.Foguetinho.center.x = self.view.center.x
        // centralizando o foguete no centro da view
        self.Foguetinho.center.y = self.Foguetinho.frame.height/1.25
        // centralizar o centro do y do foguete no 1.25 da altura dele
    }
    
}

