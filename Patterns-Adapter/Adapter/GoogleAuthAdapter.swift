//
//  GoogleAuthAdapter.swift
//  Patterns-Adapter
//
//  Created by Ruslan on 10.01.2022.
//

import Foundation

class GoogleAuthAdapter: AuthService {
    
    private var auth = GoogleAuth()
    
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
