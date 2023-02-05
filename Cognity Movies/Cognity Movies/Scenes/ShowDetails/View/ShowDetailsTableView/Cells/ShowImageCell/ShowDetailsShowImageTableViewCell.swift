//
//  ShowDetailsShowImageTableViewCell.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import UIKit

class ShowDetailsShowImageTableViewCell: UITableViewCell {
    
    // MARK: - IBProperties
    
    @IBOutlet weak var showImageView: UIImageView! {
        didSet {
            showImageView.contentMode = .scaleAspectFill
        }
    }
    
    // MARK: - LifeCycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        self.backgroundColor = .clear
    }

    // MARK: - Methods
    
    func setup(imageUrl: URL?) {
        self.showImageView.displayImage(url: imageUrl, placeholder: nil)
    }
    
}
