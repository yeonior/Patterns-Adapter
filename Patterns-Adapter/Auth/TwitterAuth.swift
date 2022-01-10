//
//  TwitterAuth.swift
//  Patterns-Adapter
//
//  Created by Ruslan on 10.01.2022.
//

import Foundation

public struct TwitterUser {
    public var email: String
    public var password: String
    public var token: String
}

public class TwitterAuth {
    public func login(email: String,
                      password: String,
                      completion: @escaping (TwitterUser?, Error?) -> Void) {
        
        let token = "twitter-token"
        let user = TwitterUser(email: email, password: password, token: token)
        
        completion(user, nil)
    }
}
