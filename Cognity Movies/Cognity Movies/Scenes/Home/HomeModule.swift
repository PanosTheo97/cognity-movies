//
//  HomeModule.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import Foundation

class HomeModule {
    func makeHomeViewController() -> HomeViewController? {
        if let viewController = HomeViewController.create(storyboardName: "Home") {
            viewController.viewModel = makeHomeViewModel()
            viewController.flowCoordinator = makeHomeFlowCoordinator(viewController)
            return viewController
        }
        return nil
    }
    
    private func makeHomeViewModel() -> HomeViewModel {
        HomeViewModel(getShowsUseCase: self.makeGetShowsUseCase(),
                      getCachedShowsUseCase: self.makeGetCachedShowsUseCase(),
                      cacheShowsUseCase: self.makeCacheShowsUseCase())
    }
    
    private func makeHomeFlowCoordinator(_ viewController: HomeViewController) -> HomeFlowCoordinator {
        HomeFlowCoordinator(homeDIContainer: makeHomeDIContainer(),
                              homeViewController: viewController)
    }
    
    private func makeHomeDIContainer() -> HomeDIContainer {
        HomeDIContainer()
    }
    
    private func makeGetShowsUseCase() -> GetShowsUseCase {
        GetShowsUseCase(showsService: self.makeShowsService())
    }
    
    private func makeGetCachedShowsUseCase() -> GetCachedShowsUseCase {
        GetCachedShowsUseCase()
    }
    
    private func makeCacheShowsUseCase() -> CacheShowsUseCase {
        CacheShowsUseCase()
    }
    
    private func makeShowsService() -> ShowsService {
        ShowsService()
    }
}
