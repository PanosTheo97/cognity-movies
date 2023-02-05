//
//  HomeViewController+HomeTableViewProtocol.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import Foundation

extension HomeViewController: HomeTableViewProtocol {
    func moveToShowDetails(showData: ShowModel) {
        self.viewModel?.update(routing: .showDetails(showData: showData))
    }
}
