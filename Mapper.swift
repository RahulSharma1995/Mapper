//
//  Mapper.swift
//  ShoppingDemo
//
//  Created by Rahul Sharma on 24/03/23.
//

import Foundation

protocol Mapper {
    associatedtype I
    associatedtype O
    // returns the desired output
    func map(_ input: I) -> O
    func emptyModel() -> O
}
