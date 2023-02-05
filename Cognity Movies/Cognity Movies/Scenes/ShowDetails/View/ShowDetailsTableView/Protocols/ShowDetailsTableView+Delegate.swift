//
//  ShowDetailsTableView+Delegate.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import Foundation
import UIKit

extension ShowDetailsTableView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch data[indexPath.row] {
        case .showImage:
            return UIScreen.main.bounds.width
        case .showDetails:
            return UITableView.automaticDimension
        }
    }
    
}
