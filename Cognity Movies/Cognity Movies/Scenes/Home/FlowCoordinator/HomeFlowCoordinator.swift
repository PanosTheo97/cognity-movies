//
//  HomeFlowCoordinator.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import Foundation

final class HomeFlowCoordinator: BaseFlowCoordinatorProtocol {
    
    // MARK: - Properties

    var homeDIContainer: HomeDIContainer
    
    weak var homeViewController: HomeViewController?
    
    // MARK: - Life cycle
    
    init(homeDIContainer: HomeDIContainer, homeViewController: HomeViewController?) {
        self.homeDIContainer = homeDIContainer
        self.homeViewController = homeViewController
    }
    
    // MARK: - Methods

    func moveToShowDetails(showData: ShowModel) {
//        guard let heroDetailsViewController = self.homeDIContainer.heroDetailsModule.makeHeroDetailsViewController(heroDetails: heroData, heroDetailsViewControllerDelegate: self.homeViewController) else { return }
//        self.homeViewController?.navigationController?.pushViewController(heroDetailsViewController, animated: true)
    }

}
