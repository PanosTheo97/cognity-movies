//
//  ShowDetailsShowDetailsTableViewCell.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import UIKit

class ShowDetailsShowDetailsTableViewCell: UITableViewCell {

    // MARK: - IBProperties
    
    @IBOutlet weak var showNameLabel: UILabel! {
        didSet {
            showNameLabel.textColor = .white
            showNameLabel.font = .systemFont(ofSize: 20, weight: .bold)
        }
    }
    @IBOutlet weak var showRatingLabel: UILabel! {
        didSet {
            showRatingLabel.textColor = .white
            showRatingLabel.font = .systemFont(ofSize: 12, weight: .medium)
        }
    }
    @IBOutlet weak var showDescriptionTextView: UITextView! {
        didSet {
            showDescriptionTextView.font = .systemFont(ofSize: 16, weight: .medium)
            showDescriptionTextView.textColor = .App.bluredWhite
            showDescriptionTextView.backgroundColor = .clear
        }
    }

    // MARK: - LifeCycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        self.backgroundColor = .clear
    }

    // MARK: - Methods
    
    func setup(showName: String?, showRating: Double?, showDescription: String?) {
        self.showNameLabel.text = showName
        if let showRating = showRating {
            self.showRatingLabel.text = "Rating: \(showRating)"
        } else {
            self.showRatingLabel.text = "Rating: -"
        }
        self.showDescriptionTextView.text = showDescription
    }
}
