//
//  HomeInteractor.swift
//  test-clean-swift
//
//  Created by Toy on 4/1/2564 BE.
//  Copyright (c) 2564 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class HomeInteractor {
    var presenter: HomePresentationLogic?
    var worker: HomeWorker?

    required init() {
        worker = HomeWorker()
    }
}

extension HomeInteractor: HomeDataStore, HomeBusinessLogic {
    func doSomething(request: Home.Something.Request) {
        worker?.doSomeWork()
        
        let response = Home.Something.Response()
        presenter?.presentSomething(response: response)
    }
}
