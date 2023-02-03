//
//  ReusableViewProtocol.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 3/2/23.
//

import Foundation
import UIKit

protocol ReusableViewProtocol {
    static var reuseIdentifier: String { get }
}

extension ReusableViewProtocol {
    static var reuseIdentifier: String {
        return String(describing: self)+"Identifier"
    }
}

extension UIView: ReusableViewProtocol { }
