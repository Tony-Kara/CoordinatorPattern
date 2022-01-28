//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Tony-Eniola on 1/28/22.
//

import UIKit

class ViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    
    var contentView:UIView = UIView()
    var background:UIImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        setUpContent()
        setUpBackground()
        setUpButtonConstraints()
    }
    
    func setUpContent(){
        self.view.addSubview(contentView)
        contentView.addSubview(background)
        contentView.addSubview(fbButton)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
    }
    
    func setUpBackground(){
        background.image = UIImage(named: "Background")
        background.translatesAutoresizingMaskIntoConstraints = false
        background.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        background.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        background.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        background.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }
    
    private lazy var fbButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Tap Me!!", for: .normal)
        button.backgroundColor = .systemGreen
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        return button
    }()
    
    func setUpButtonConstraints() {
        fbButton.translatesAutoresizingMaskIntoConstraints = false
        fbButton.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 50).isActive = true
        fbButton.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -50).isActive = true
        fbButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        fbButton.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
    }
    
    @objc func didTapButton() {
        coordinator?.eventOccurred(with: .buttonTapped)
    }
    
}

