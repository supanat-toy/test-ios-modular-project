//
//  HomeRouter.swift
//  test-clean-swift
//
//  Created by Toy on 4/1/2564 BE.
//  Copyright (c) 2564 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class HomeRouter: NSObject, HomeRoutingLogic, HomeDataPassing {
    weak var viewController: HomeViewController?
    var dataStore: HomeDataStore?
}
