
//
//  Apply.swift
//  BookTodoList
//
//  Created by David Ungar on 9/7/16.
//
//

import Foundation

precedencegroup LeftFunctionalApply {
    associativity: left
    higherThan: AssignmentPrecedence
    lowerThan: TernaryPrecedence
}

// pipe val into monadic fn
infix operator |> : LeftFunctionalApply

// pipe val into monadic fn
public func |>  <A, B> ( x: A, f: (A) throws -> B ) rethrows  -> B {
    return try f(x)
}
