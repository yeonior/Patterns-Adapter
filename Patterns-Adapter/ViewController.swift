//
//  ViewController.swift
//  Patterns-Adapter
//
//  Created by Ruslan on 10.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var authService: AuthService = GoogleAuthAdapter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createUser(email: "user@example.com", password: "Xw82n@!lwwq.i")
    }
    
    func createUser(email: String, password: String) {
        authService.login(email: email, password: password) { user, token in
            print("Auth succeded: \(user.email), \(token.value) ")
        } failure: { error in
            if let error = error {
                print(error.localizedDescription)
            }
        }
    }
}
