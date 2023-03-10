//
//  SplashViewModel.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import Foundation

class SplashViewModel: BaseViewModelProtocol {

    // MARK: - Observables
    
    var isLoading = Observable<Bool?>(value: nil)
    var routingEnum = Observable<Splash.RoutingEnum?>(value: nil)
    
    // MARK: - Life cycle
    
    init() {
        
    }
    
    func update(routing: Splash.RoutingEnum) {
        self.routingEnum.value = routing
    }
}
