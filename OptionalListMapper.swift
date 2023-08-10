//
//  OptionalListMapper.swift
//  ShoppingDemo
//
//  Created by Rahul Sharma on 24/03/23.
//

import Foundation

protocol OptionalListMapperProtocol {
    associatedtype I
    associatedtype O
    func map(_ input: [I]?) -> [O]?
}

struct OptionalListMapper<M: Mapper>: OptionalListMapperProtocol {
    public typealias I = M.I
    public typealias O = M.O

    private let mapper: M

    public init(_ mapper: M) {
        self.mapper = mapper
    }

    /// returns nil if the input nil or empty
    public func map(_ input: [M.I]?) -> [M.O]? {
       input == nil || input!.isEmpty ? nil : input!.map { mapper.map($0) }
    }
}
