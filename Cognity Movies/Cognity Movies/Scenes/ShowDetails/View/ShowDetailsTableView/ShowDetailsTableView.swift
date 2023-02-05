//
//  ShowDetailsTableView.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import UIKit

enum ShowDetailsTableViewDataEnum {
    case showImage(imageUrl: URL?)
    case showDetails(showName: String?, showRating: Double?, showDescription: String?)
}

class ShowDetailsTableView: UITableView {

    // MARK: - Properties
    
    var data: [ShowDetailsTableViewDataEnum] = [] {
        didSet {
            self.reloadData()
        }
    }

    // MARK: - Life Cycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor = .clear
        self.separatorStyle = .none
        self.contentInsetAdjustmentBehavior = .never
        
        self.delegate = self
        self.dataSource = self
    
        self.bindCell(named: "ShowDetailsShowImageTableViewCell")
        self.bindCell(named: "ShowDetailsShowDetailsTableViewCell")
    }
    
}


