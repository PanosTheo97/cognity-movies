//
//  HomeTitleTableViewCell.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import UIKit

class HomeTitleTableViewCell: UITableViewCell {
    
    // MARK: - IBProperties
    
    @IBOutlet weak var tvMazeImageView: UIImageView! {
        didSet {
            tvMazeImageView.contentMode = .scaleAspectFit
            tvMazeImageView.image = UIImage.get(image: .tvMaze)
        }
    }
    
    @IBOutlet weak var separatorView: UIView! {
        didSet {
            self.separatorView.backgroundColor = .App.lightGray
        }
    }
    // MARK: - LifeCycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        self.backgroundColor = .clear
    }
}
