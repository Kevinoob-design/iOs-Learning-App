//
//  ViewController.swift
//  App-Swoosh
//
//  Created by Hector Morales veloz on 6/21/19.
//  Copyright © 2019 Hector Morales veloz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        swooshIco.frame = CGRect(x: view.frame.size.width / 2 - swooshIco.frame.size.width / 2, y: 50, width: swooshIco.frame.size.width, height: swooshIco.frame.size.height);
        
        bgImg.frame = view.frame;
    }

    @IBOutlet weak var swooshIco: UIImageView!
    @IBOutlet weak var bgImg: UIImageView!
}

