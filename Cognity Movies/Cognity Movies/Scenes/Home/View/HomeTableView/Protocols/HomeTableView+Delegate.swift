//
//  HomeTableView+Delegate.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import Foundation
import UIKit
extension HomeTableView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch data[indexPath.row] {
        case .title:
            return 50
        case .noContent:
            return UITableView.automaticDimension
        case .show:
            return UIScreen.main.bounds.height * 0.14
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        switch data[indexPath.row] {
        case .show(let showData) :
            self.homeTableViewDelegate?.moveToShowDetails(showData: showData)
        default: ()
        }
    }
    
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        UIView.animate(withDuration: 0.2) {
            guard let cell = tableView.cellForRow(at: indexPath) else { return }
            cell.contentView.transform = .init(scaleX: 0.90, y: 0.90)
        }
    }
    
    func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
        UIView.animate(withDuration: 0.2) {
            guard let cell = tableView.cellForRow(at: indexPath) else { return }
            cell.contentView.transform = .identity
        }
    }
}
