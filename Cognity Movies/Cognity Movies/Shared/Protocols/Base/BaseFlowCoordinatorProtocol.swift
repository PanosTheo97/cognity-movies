//
//  BaseFlowCoordinatorProtocol.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import Foundation
import SVProgressHUD

protocol BaseFlowCoordinatorProtocol {
    
    // MARK: - Methods
    
    func handleLoader(_ isLoading: Bool?)
}

extension BaseFlowCoordinatorProtocol {
    
    func handleLoader(_ isLoading: Bool?) {
        if isLoading ?? false {
            SVProgressHUD.show()
        } else {
            DispatchQueue.main.async {
                SVProgressHUD.dismiss(withDelay: 0.5)
            }
        }
    }
}
