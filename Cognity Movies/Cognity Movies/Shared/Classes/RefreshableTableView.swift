//
//  RefreshableTableView.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import Foundation
import UIKit

class RefreshableTableView: UITableView {
    
    // MARK: - METHODS 🌐 PUBLIC

    override func awakeFromNib() {
        super.awakeFromNib()
        
        refreshControl = UIRefreshControl()
        refreshControl?.tintColor = .white
        refreshControl?.addTarget(target, action: #selector(refresh(_:)), for: .valueChanged)
    }
    
    @objc func refresh(_ refreshControl: UIRefreshControl) {
        didRefreshTrigger()
        refreshControl.endRefreshing()
            
    }
    
    func didRefreshTrigger() {
        // ✔️ NONE
    }
}
