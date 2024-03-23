//
//  ViewController.swift
//  FacebookSigninDemo
//
//  Created by  Kalpesh on 23/03/24.
//

import UIKit
import FacebookLogin

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginButton = FBLoginButton()
        loginButton.center = view.center
        loginButton.delegate = self
        view.addSubview(loginButton)
        
        // Do any additional setup after loading the view.
    }


}

extension ViewController: LoginButtonDelegate {
    func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            if let accessToken = AccessToken.current {
                print("Logged in with token: \(accessToken.tokenString)")
            }
        }
        
        func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
            print("User logged out")
        }
}
