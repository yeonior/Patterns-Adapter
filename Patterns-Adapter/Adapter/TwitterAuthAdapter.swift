//
//  TwitterAuthAdapter.swift
//  Patterns-Adapter
//
//  Created by Ruslan on 11.01.2022.
//

import Foundation

class TwitterAuthAdapter: AuthService {
    
    private var auth = TwitterAuth()
    
    public func login(email: String,
                      password: String,
                      success: @escaping (User, Token) -> Void,
                      failure: @escaping (Error?) -> Void) {
        
        auth.login(email: email, password: password) { currentUser, error in
            
            guard let currentUser = currentUser else {
                failure(error)
                return
            }
            
            let user = User(email: currentUser.email, password: currentUser.password)
            let token = Token(value: currentUser.token)
            success(user, token)
        }
    }
}
