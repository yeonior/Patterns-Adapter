//
//  GoogleAuth.swift
//  Patterns-Adapter
//
//  Created by Ruslan on 10.01.2022.
//

import Foundation

public struct GoogleUser {
    public var email: String
    public var password: String
    public var token: String
}

public class GoogleAuth {
    public func login(email: String,
                      password: String,
                      completion: @escaping (GoogleUser?, Error?) -> Void) {
        
        let token = "google-token"
        let user = GoogleUser(email: email, password: password, token: token)
        
        completion(user, nil)
    }
}
