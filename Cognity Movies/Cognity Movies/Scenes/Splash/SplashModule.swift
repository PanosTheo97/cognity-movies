//
//  SplashModule.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import Foundation

class SplashModule {
    func makeSplashViewController() -> SplashViewController? {
        if let viewController = SplashViewController.create(storyboardName: "Splash") {
            viewController.viewModel = makeSplashViewModel()
            viewController.flowCoordinator = makeSplashFlowCoordinator(viewController)
            return viewController
        }
        return nil
    }
    
    private func makeSplashViewModel() -> SplashViewModel {
        SplashViewModel()
    }
    
    private func makeSplashFlowCoordinator(_ viewController: SplashViewController) -> SplashFlowCoordinator {
        SplashFlowCoordinator(splashDIContainer: makeSplashDIContainer(),
                              splashViewController: viewController)
    }
    
    private func makeSplashDIContainer() -> SplashDIContainer {
        SplashDIContainer()
    }
}
