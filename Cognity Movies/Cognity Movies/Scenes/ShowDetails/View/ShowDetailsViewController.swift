//
//  ShowDetailsViewController.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import UIKit

class ShowDetailsViewController: UIViewController, BaseProtocol {

    // MARK: - IBProperties
    @IBOutlet weak var showDetailsTableView: ShowDetailsTableView!
    
    // MARK: - Properties
    
    var viewModel: ShowDetailsViewModel?
    var flowCoordinator: ShowDetailsFlowCoordinator?
    

    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
        self.viewModel?.executeShowDetailsSetupUseCase()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    
    // MARK: - Methods
    
    private func setup() {
        registerObservers()
        self.view.backgroundColor = .App.darkGray
        self.edgesForExtendedLayout = .all
    }
    
    private func registerObservers() {
        registerBaseObservers()
        
        viewModel?.showDetailsTableViewDataEnum.addObserver({ data in
            if let data = data {
                self.showDetailsTableView.data = data
            }
        })
    }

}

struct ShowDetails {
    enum RoutingEnum {
        case test
    }
}
