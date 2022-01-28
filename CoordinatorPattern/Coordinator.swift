//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Tony-eniola on 1/28/22.
//

import Foundation
import UIKit

enum Event {
    case buttonTapped
}

protocol Coordinator {
    
    var navigationController: UINavigationController? { get set}
    
    func eventOccurred(with type: Event)
    func start()
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
    
}
