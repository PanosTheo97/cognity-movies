//
//  SplashViewController.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import UIKit

final class SplashViewController: UIViewController, BaseProtocol {
    
    // MARK: - IBProperties
    
    @IBOutlet weak var tvMazeImageView: UIImageView! {
        didSet {
            tvMazeImageView.contentMode = .scaleAspectFit
            tvMazeImageView.image = UIImage.get(image: .tvMaze)
        }
    }
    
    // MARK: - Properties
    
    var viewModel: SplashViewModel?
    var flowCoordinator: SplashFlowCoordinator?
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("OK")
        self.setup()
        self.viewModel?.update(routing: .home)
    }

    // MARK: - Methods
    
    private func setup() {
        registerObservers()
        
        self.view.backgroundColor = .App.lightGray
        self.navigationController?.navigationBar.isHidden = true
    }
    
    private func registerObservers() {
        
        registerBaseObservers()
        
        viewModel?.routingEnum.addObserver({ [weak self] routingEnum in
            switch routingEnum {
            case .home:
                self?.flowCoordinator?.moveToHome()
            default: ()
            }
        })
        
    }

}

struct Splash {
    enum RoutingEnum {
        case home
    }
}
