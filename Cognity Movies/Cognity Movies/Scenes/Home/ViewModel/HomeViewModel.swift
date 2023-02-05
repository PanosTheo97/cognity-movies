//
//  HomeViewModel.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import Foundation

class HomeViewModel: BaseViewModelProtocol {

    // MARK: - Observables
    
    var isLoading = Observable<Bool?>(value: nil)
    var routingEnum = Observable<Home.RoutingEnum?>(value: nil)
    var homeTableViewData = Observable<[HomeTableViewDataEnum]?>(value: nil)
    
    // MARK: - Properties
    
    private var shows: [ShowModel]?
    
    var getShowsUseCase: GetShowsUseCase
    var getCachedShowsUseCase: GetCachedShowsUseCase
    var cacheShowsUseCase: CacheShowsUseCase
    
    // MARK: - Life cycle
    
    init(getShowsUseCase: GetShowsUseCase, getCachedShowsUseCase: GetCachedShowsUseCase, cacheShowsUseCase: CacheShowsUseCase) {
        self.getShowsUseCase = getShowsUseCase
        self.getCachedShowsUseCase = getCachedShowsUseCase
        self.cacheShowsUseCase = cacheShowsUseCase
    }
    
    // MARK: - Methods
    
    func update(routing: Home.RoutingEnum) {
        self.routingEnum.value = routing
    }
    
    func executeGetShowsUseCase() {
        self.isLoading.value = true
        
        self.getShowsUseCase.execute { shows in
            self.shows = shows
            var homeTableViewDataEnum: [HomeTableViewDataEnum] = []
            if shows.count != 0 {
                homeTableViewDataEnum.append(.title)
                shows.forEach { show in
                    homeTableViewDataEnum.append(.show(show))
                }
            } else {
                homeTableViewDataEnum.append(.noContent)
            }
            self.homeTableViewData.value = homeTableViewDataEnum
            self.isLoading.value = false
        }
    }
    
    func executeGetCachedShowsUseCase() {
        self.getCachedShowsUseCase.execute { shows in
            self.shows = shows
            self.isLoading.value = false
        }
    }
    
    func executeCacheShowsUseCase() {
        self.cacheShowsUseCase.execute()
    }
    
    func getShows() -> [ShowModel]? {
        self.shows
    }
}
