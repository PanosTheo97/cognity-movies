//
//  ShowDetailsViewModel.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import Foundation

class ShowDetailsViewModel: BaseViewModelProtocol {

    // MARK: - Observables
    
    var isLoading = Observable<Bool?>(value: nil)
    var routingEnum = Observable<ShowDetails.RoutingEnum?>(value: nil)
    var showDetailsTableViewDataEnum = Observable<[ShowDetailsTableViewDataEnum]?>(value: nil)
    
    // MARK: - Properties
    
    var showDetails: ShowModel
    
    var showDetailsSetupUseCase: ShowDetailsSetupUseCase
    
    // MARK: - Life cycle
    
    init(showDetails: ShowModel, showDetailsSetupUseCase: ShowDetailsSetupUseCase) {
        self.showDetails = showDetails
        self.showDetailsSetupUseCase = showDetailsSetupUseCase
    }
    
    // MARK: - Methods
    
    func update(routing: ShowDetails.RoutingEnum) {
        self.routingEnum.value = routing
    }
    
    func executeShowDetailsSetupUseCase() {
        self.showDetailsSetupUseCase.execute(showData: self.showDetails) { data in
            self.showDetailsTableViewDataEnum.value = data
        }
    }
    
}
