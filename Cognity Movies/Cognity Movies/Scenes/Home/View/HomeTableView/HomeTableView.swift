//
//  HomeTableView.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import UIKit

enum HomeTableViewDataEnum {
    case title
    case noContent
    case show(ShowModel)
}

protocol HomeTableViewProtocol: AnyObject {
    func moveToShowDetails(showData: ShowModel)
}

final class HomeTableView: UITableView {
    
    // MARK: - Properties
    
    weak var homeTableViewDelegate: HomeTableViewProtocol?
    
    var data: [HomeTableViewDataEnum] = [] {
        didSet {
            self.reloadData()
        }
    }

    // MARK: - Life Cycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor = .clear
        self.separatorStyle = .none
        
        self.delegate = self
        self.dataSource = self
    
        self.bindCell(named: "HomeTitleTableViewCell")
        self.bindCell(named: "HomeNoContentTableViewCell")
        self.bindCell(named: "HomeShowTableViewCell")
    }
    
    // MARK: - Methods
    
    func setup(homeTableViewDelegate: HomeTableViewProtocol?) {
        self.homeTableViewDelegate = homeTableViewDelegate
    }
  
}
