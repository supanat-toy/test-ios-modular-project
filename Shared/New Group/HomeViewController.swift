//
//  HomeViewController.swift
//  test-clean-swift
//
//  Created by Toy on 4/1/2564 BE.
//  Copyright (c) 2564 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit
import CocoaAsyncSocket
import Core
import Application

class HomeViewController: UIViewController, GCDAsyncSocketDelegate {
    
    var socket:GCDAsyncSocket!
    
    // MARK: @IBOutlet
    
    var interactor: HomeBusinessLogic?
    var router: (NSObjectProtocol & HomeRoutingLogic & HomeDataPassing)?
    
    // MARK: Routing
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let scene = segue.identifier {
            let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
            if let router = router, router.responds(to: selector) {
                router.perform(selector, with: segue)
            }
        }
    }
    
    // MARK: View lifecycle
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
      super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
      configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
      configure()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doSomething()
        
        setupSocket()
    }
    
    func setupSocket() {
        let addr = "192.168.0.10"
        let port:UInt16 = 35000
        
        
//        let a = value1
        let a = AAA(name: "", passowrd: "")
        print("name: \(a.name)")
        a.getValue()
        
        let b = DataModel()
        b.classAString;
        
        let coreModel = CoreModel()
        coreModel.getValue()
        
//        socket = GCDAsyncSocket(delegate: self, delegateQueue: dispatchMain())
//        do {
//            try socket.connect(toHost: addr, onPort: port)
//        } catch let e {
//            print(e)
//        }
    }
    
    // MARK: Do something
    
    func doSomething() {
        let request = Home.Something.Request()
        interactor?.doSomething(request: request)
    }
    
    func socket(_ sock: GCDAsyncSocket, didConnectTo url: URL) {
        
    }
    
    func socket(_ sock: GCDAsyncSocket, didWriteDataWithTag tag: Int) {
        
    }
    
    func socket(_ sock: GCDAsyncSocket, didAcceptNewSocket newSocket: GCDAsyncSocket) {
        
    }
    
    func socket(_ sock: GCDAsyncSocket, didRead data: Data, withTag tag: Int) {
        
    }
    
    func socket(_ sock: GCDAsyncSocket, didConnectToHost host: String, port: UInt16) {
        
    }
    
    func socket(_ sock: GCDAsyncSocket, didReadPartialDataOfLength partialLength: UInt, tag: Int) {
        
    }
    
    func socket(_ sock: GCDAsyncSocket, didWritePartialDataOfLength partialLength: UInt, tag: Int) {
        
    }
    
    func socket(_ sock: GCDAsyncSocket, didReceive trust: SecTrust, completionHandler: @escaping (Bool) -> Void) {
        
    }
    
//    func socket(_ sock: GCDAsyncSocket, shouldTimeoutReadWithTag tag: Int, elapsed: TimeInterval, bytesDone length: UInt) -> TimeInterval {
//
//    }
//
//    func socket(_ sock: GCDAsyncSocket, shouldTimeoutWriteWithTag tag: Int, elapsed: TimeInterval, bytesDone length: UInt) -> TimeInterval {
//
//    }
}

//MARK: Setup & Configuration
extension HomeViewController {
    private func setup() {
        
    }
    
    private func configure() {
        HomeConfiguration.shared.configure(self)
    }
}

extension HomeViewController : HomeDisplayLogic {
    func displaySomething(viewModel: Home.Something.ViewModel) {
        
    }
}
