//
//  UIImageExtension.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 3/2/23.
//

import Foundation
import UIKit

enum Image: String {
    case tvMaze
}

extension UIImage {
    
    // MARK: - Methods
    
    static func get(image: Image) -> UIImage? {
        guard let image = UIImage(named: image.rawValue) else {
            print("COULD NOT FIND IMAGE '\(image.rawValue)'")
            return nil
        }
        return image
    }
}
