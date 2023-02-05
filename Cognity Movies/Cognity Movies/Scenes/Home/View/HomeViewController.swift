//
//  HomeViewController.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import UIKit

class HomeViewController: UIViewController, BaseProtocol {

    // MARK: - IBProperties
    @IBOutlet weak var homeTableView: HomeTableView! {
        didSet {
            homeTableView.setup(homeTableViewDelegate: self)
        }
    }
    
    // MARK: - Properties
    
    var viewModel: HomeViewModel?
    var flowCoordinator: HomeFlowCoordinator?

    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
        self.viewModel?.executeGetShowsUseCase()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    // MARK: - Methods
    
    private func setup() {
        registerObservers()
        self.view.backgroundColor = .App.darkGray
    }
    
    private func registerObservers() {
        
        registerBaseObservers()
        
        viewModel?.routingEnum.addObserver({ [weak self] routingEnum in
            switch routingEnum {
            case .showDetails(let showData):
                self?.flowCoordinator?.moveToShowDetails(showData: showData)
            default: ()
            }
        })
        
        viewModel?.homeTableViewData.addObserver({ [weak self] data in
            if let data = data  {
                self?.homeTableView.data = data
            }
        })
        
    }

}

struct Home {
    enum RoutingEnum {
        case showDetails(showData: ShowModel)
    }
}

