//
//  ShowDetailsFlowCoordinator.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import Foundation
class ShowDetailsFlowCoordinator {
    
    // MARK: - Properties

    var showDetailsDIContainer: ShowDetailsDIContainer
    
    weak var showDetailsViewController: ShowDetailsViewController?
    
    // MARK: - Life cycle
    
    init(showDetailsDIContainer: ShowDetailsDIContainer, showDetailsViewController: ShowDetailsViewController?) {
        self.showDetailsDIContainer = showDetailsDIContainer
        self.showDetailsViewController = showDetailsViewController
    }
    
}
