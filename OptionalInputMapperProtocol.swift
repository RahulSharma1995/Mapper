//
//  OptionalInputMapperProtocol.swift
//  ShoppingDemo
//
//  Created by Rahul Sharma on 19/04/23.
//

import Foundation

protocol OptionalInputMapperProtocol {
    associatedtype I
    associatedtype O
    func map(_ input: I?) -> O
}

struct OptionalInputMapper<M: Mapper>: OptionalInputMapperProtocol {
    
    
    public typealias I = M.I
    public typealias O = M.O

    private let mapper: M

    public init(_ mapper: M) {
        self.mapper = mapper
    }
    
    func map(_ input: M.I?) -> M.O {
        input.map { mapper.map($0)} ?? mapper.emptyModel()
    }
    
}
