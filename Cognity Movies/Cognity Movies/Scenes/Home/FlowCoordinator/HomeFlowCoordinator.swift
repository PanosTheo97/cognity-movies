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
        guard let showDetailsViewController = self.homeDIContainer.showDetailsModule.makeShowDetailsViewController(showDetails: showData) else { return }
        self.homeViewController?.navigationController?.pushViewController(showDetailsViewController, animated: true)
    }

}
