//
//  HomeNoContentTableViewCell.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import UIKit

class HomeNoContentTableViewCell: UITableViewCell {
    
    // MARK: - IBProperties

    @IBOutlet weak var noContentLabel: UILabel! {
        didSet {
            noContentLabel.textColor = .white
            noContentLabel.font = .systemFont(ofSize: 20, weight: .bold)
            noContentLabel.text = "No shows were found. Pull down to refresh."
        }
    }
    
    // MARK: - LifeCycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        self.backgroundColor = .clear
    }
    
}
