//
//  ViewController.swift
//  Practica Collection	View
//
//  Created by usu27 on 9/12/15.
//  Copyright © 2015 usu27. All rights reserved.
//

import UIKit


class ViewController: UIViewController{

    @IBOutlet weak var Perfil: UIImageView!
    var imagen: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Perfil.image = imagen
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

