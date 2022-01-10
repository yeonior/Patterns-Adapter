//
//  AuthService.swift
//  Patterns-Adapter
//
//  Created by Ruslan on 10.01.2022.
//

import Foundation

public struct User {
    public let email: String
    public let password: String
}

public struct Token {
    public let token: String
}

public protocol AuthService {
    func login(email: String,
               password: String,
               success: @escaping (User?, Token) -> Void,
               failure: @escaping (Error?) -> Void)
}
