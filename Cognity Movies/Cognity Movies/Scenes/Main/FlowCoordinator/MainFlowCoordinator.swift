//
//  MainFlowCoordinator.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import Foundation

final class MainFlowCoordinator {
    
    // MARK: - Properties
    
    weak var mainNavigationController: MainNavigationController?
    
    // MARK: - Life cycle
    
    init(mainNavigationController: MainNavigationController?) {
        self.mainNavigationController = mainNavigationController
    }
    
}
