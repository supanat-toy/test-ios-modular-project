//
//  HomePresenter.swift
//  test-clean-swift
//
//  Created by Toy on 4/1/2564 BE.
//  Copyright (c) 2564 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class HomePresenter {
    weak var viewController: HomeDisplayLogic?
    
    required init() {
        
    }
}

extension HomePresenter: HomePresentationLogic {
    
    func presentSomething(response: Home.Something.Response) {
        let viewModel = Home.Something.ViewModel()
        viewController?.displaySomething(viewModel: viewModel)
    }
}
