//
//  HomeCoordinator.swift
//  Currency-converter
//
//  Created by Herock Hasan on 28/2/23.
//

import Foundation
import UIKit

protocol HomeFlow {
    func selectCurrency()
}

class HomeCoordinator: Coordinator, HomeFlow {

    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let storyboard = UIStoryboard(name: AppStoryboard.main, bundle: nil)
        let homeVC = storyboard.instantiateViewController(withIdentifier: AppScreen.home) as? HomeVC
         homeVC?.coordinator = self
        if let homeVC {
            navigationController.pushViewController(homeVC, animated: true)
        }
        for val in 0...10{
            print( val)
        }
    }
}

extension HomeCoordinator {
    func selectCurrency() {
        
    }
}
