//
//  ListMapperProtocol.swift
//  ShoppingDemo
//
//  Created by Rahul Sharma on 24/03/23.
//

import Foundation

protocol ListMapperProtocol {
    associatedtype I
    associatedtype O
    func map(_ input: [I]) -> [O]
}

struct ListMapper<M: Mapper>: ListMapperProtocol {
    public typealias I = M.I
    public typealias O = M.O

    private let mapper: M

    public init(_ mapper: M) {
        self.mapper = mapper
    }

    /// returns the desired list
    public func map(_ input: [M.I]) -> [M.O] {
        input.map { mapper.map($0) }
    }
}

