//
//  BorderButton.swift
//  App-Swoosh
//
//  Created by Hector Morales veloz on 6/21/19.
//  Copyright © 2019 Hector Morales veloz. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib();
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }
}
