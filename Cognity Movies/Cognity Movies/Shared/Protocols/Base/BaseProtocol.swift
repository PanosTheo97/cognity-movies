//
//  BaseProtocol.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import Foundation

protocol BaseProtocol: AnyObject {
    
    associatedtype ViewModel
    associatedtype FlowCoordinator
    
    // MARK: - Properties
    
    var viewModel: ViewModel? { get set }
    var flowCoordinator: FlowCoordinator { get set }
    
    // MARK: - Methods
    
    func registerBaseObservers()
    
}

extension BaseProtocol {
    
    func registerBaseObservers() {
        self.registerLoadingObservers()
    }
    
    func registerLoadingObservers() {
        (viewModel as? BaseViewModelProtocol)?.isLoading.addObserver({ [weak self] isLoading in
            guard let flowCoordinator = self?.flowCoordinator as? BaseFlowCoordinatorProtocol else { return }
            flowCoordinator.handleLoader(isLoading)
        })
    }
}
