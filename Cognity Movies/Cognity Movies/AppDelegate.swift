//
//  AppDelegate.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 3/2/23.
//

import UIKit

let appDelegate: AppDelegate? = UIApplication.shared.delegate as? AppDelegate
let appFlowCoordinator = AppFlowCoordinator(appDIContainer: AppDIContainer())
let appViewModel = AppViewModel()

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: - Properties
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        NetworkManager.start()
        appViewModel.configureLoader()
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

