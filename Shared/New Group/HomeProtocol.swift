//
//  HomeProtocol.swift
//  test-clean-swift
//
//  Created by Toy on 4/1/2564 BE.
//  Copyright (c) 2564 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

//MARK: ViewController
protocol HomeDisplayLogic: class {
    func displaySomething(viewModel: Home.Something.ViewModel)
}

//MARK: Interactor
protocol HomeBusinessLogic {
    func doSomething(request: Home.Something.Request)
}

//MARK: Presenter
protocol HomePresentationLogic {
    func presentSomething(response: Home.Something.Response)
}

//MARK: Routable
@objc protocol HomeRoutingLogic {

}

//MARK: DataStore
protocol HomeDataStore {

}

//MARK: DataPassing
protocol HomeDataPassing {
    var dataStore: HomeDataStore? { get }
}
