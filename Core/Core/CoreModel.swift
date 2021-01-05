//
//  CoreModel.swift
//  Core
//
//  Created by Toy on 5/1/2564 BE.
//

import Foundation
import Moya

public class CoreModel {
    
    public init() {
        
    }
    public var value1 = ""
    
    public func getValue() -> String {
        return "123"
    }
}

public struct AAA {
    public var name: String
    public var passowrd: String
    
    public static func getA() -> String {
        return "A"
    }
    
    public init(name: String, passowrd: String) {
        self.passowrd = passowrd
        self.name = name
    }
    
    public func getValue() -> String {
        return "123"
    }
}
