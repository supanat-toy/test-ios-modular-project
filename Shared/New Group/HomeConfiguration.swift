//
//  HomeConfiguration.swift
//  test-clean-swift
//
//  Created by Toy on 4/1/2564 BE.
//  Copyright (c) 2564 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

class HomeConfiguration {
    static let shared: HomeConfiguration = HomeConfiguration()
    
    func configure(_ viewController: HomeViewController) {
        let interactor = HomeInteractor()
        let presenter = HomePresenter()
        let router = HomeRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
}
