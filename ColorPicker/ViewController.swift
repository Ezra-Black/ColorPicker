//
//  ViewController.swift
//  ColorPicker
//
//  Created by Joseph Rogers on 11/20/19.
//  Copyright © 2019 Joseph Rogers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func changeColor(_ sender: ColorWheel) {
        view.backgroundColor = sender.color
    }
}
