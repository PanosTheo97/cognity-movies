//
//  HomeShowTableViewCell.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import UIKit

class HomeShowTableViewCell: UITableViewCell {
    
    // MARK: - IBProperties
    
    @IBOutlet weak var cellView: UIView! {
        didSet {
            self.cellView.backgroundColor = .App.gray
        }
    }
    
    @IBOutlet weak var showImageView: UIImageView! {
        didSet {
            showImageView.contentMode = .scaleAspectFill
        }
    }
    
    @IBOutlet weak var showNameLabel: UILabel! {
        didSet {
            showNameLabel.textColor = .white
            showNameLabel.font = .systemFont(ofSize: 20, weight: .bold)
        }
    }
    
    @IBOutlet weak var ratingLabel: UILabel! {
        didSet {
            ratingLabel.textColor = .white
            ratingLabel.font = .systemFont(ofSize: 12, weight: .medium)
        }
    }
    @IBOutlet weak var arrowImageView: UIImageView!{
        didSet {
            arrowImageView.contentMode = .scaleAspectFit
            arrowImageView.image = UIImage.get(image: .arrow)
        }
    }
    
    // MARK: - LifeCycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        self.backgroundColor = .clear
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        self.cellView.layer.masksToBounds = true
        self.cellView.layer.cornerRadius = 8
        
        self.showImageView.layer.masksToBounds = false
        self.showImageView.layer.cornerRadius = self.showImageView.frame.width/2
        self.showImageView.clipsToBounds = true
    }

    // MARK: - Methods
    
    func setup(showData: ShowModel) {
        self.showImageView.displayImage(url: showData.image?.getThumbnailUrl(), placeholder: nil)
        self.showNameLabel.text = showData.name
        self.ratingLabel.text = "Rating: \(showData.rating?.average ?? 0.0)"
        self.setNeedsDisplay()
    }
}
