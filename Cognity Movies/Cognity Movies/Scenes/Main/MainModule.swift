//
//  MainModule.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import Foundation

class MainModule {
    
    func makeMainNavigationController() -> MainNavigationController {
        let mainNavigationController = MainNavigationController()
        mainNavigationController.flowCoordinator = makeMainFlowCoordinator(mainNavigationController: mainNavigationController)
        return mainNavigationController
    }
    
    func makeMainFlowCoordinator(mainNavigationController: MainNavigationController) -> MainFlowCoordinator {
        MainFlowCoordinator(mainNavigationController: mainNavigationController)
    }
    
}
