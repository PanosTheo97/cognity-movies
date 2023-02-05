//
//  ShowDetailsModule.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import Foundation

class ShowDetailsModule {
    func makeShowDetailsViewController(showDetails: ShowModel) -> ShowDetailsViewController? {
        if let viewController = ShowDetailsViewController.create(storyboardName: "ShowDetails") {
            viewController.viewModel = makeShowDetailsViewModel(showDetails: showDetails)
            viewController.flowCoordinator = makeShowDetailsFlowCoordinator(viewController)
            return viewController
        }
        return nil
    }
    
    private func makeShowDetailsViewModel(showDetails: ShowModel) -> ShowDetailsViewModel {
        ShowDetailsViewModel(showDetails: showDetails, showDetailsSetupUseCase: self.makeShowDetaislSetupUseCase())
    }
    
    private func makeShowDetailsFlowCoordinator(_ viewController: ShowDetailsViewController) -> ShowDetailsFlowCoordinator {
        ShowDetailsFlowCoordinator(showDetailsDIContainer: makeHeroDetailsDIContainer(),
                              showDetailsViewController: viewController)
    }
    
    private func makeHeroDetailsDIContainer() -> ShowDetailsDIContainer {
        ShowDetailsDIContainer()
    }
    
    private func makeShowDetaislSetupUseCase() -> ShowDetailsSetupUseCase {
        ShowDetailsSetupUseCase()
    }
    
}
