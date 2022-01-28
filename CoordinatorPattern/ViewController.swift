//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by mac on 1/28/22.
//

import UIKit

class ViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        title = "Home"
    }


}

