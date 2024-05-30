//
//  ViewController.swift
//  Homeru
//
//  Created by chick on 2024/05/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var start: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        start.layer.borderWidth = 1.0
        start.layer.borderColor = UIColor.brown.cgColor
    }


}

