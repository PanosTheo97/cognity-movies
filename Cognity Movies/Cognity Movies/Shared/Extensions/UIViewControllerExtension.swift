//
//  UIViewControllerExtension.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 3/2/23.
//

import Foundation
import UIKit

extension UIViewController {
    
    // MARK: - Methods
    
    static func create(storyboardName: String, identifier: String = "") -> Self? {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let controllerIdentifier = identifier == "" ? storyboardName+"ViewControllerIdentifier" : identifier
        guard let viewController = storyboard.instantiateViewController(withIdentifier: controllerIdentifier) as? Self else {
            return nil
        }
        return viewController
    }
}
