//
//  BaseViewModelProtocol.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import Foundation

protocol BaseViewModelProtocol {
    var isLoading: Observable<Bool?> { get set }
}
