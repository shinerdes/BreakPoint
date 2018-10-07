//
//  AuthServices.swift
//  breakpoint
//
//  Created by 김영석 on 2018. 10. 7..
//  Copyright © 2018년 김영석. All rights reserved.
//

import Foundation
import Firebase


class AuthService {
    static let instance = AuthService()
    
    func registerUser(withEmail email: String, andPassword password: String, userCreationComplete: @escaping(_ status: Bool, _ error: Error?) -> ()) {
        Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
            guard let user = authResult?.user else {
                userCreationComplete(false, error)
                return
            }
            let userData = ["provider": user.providerID, "email": user.email]
            DataService.instance.createDBUser(uid: user.uid, userData: userData as Dictionary<String, Any> )
            userCreationComplete(true, nil)
        }
    }
    
    
    func loginUser(withEmail email: String, andPassword password: String, loginComplete: @escaping(_ status: Bool, _ error: Error?) -> ()) {
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            if error != nil {
                loginComplete(false, error)
                return
         
            }
            loginComplete(true, nil)
        }
    }
}
/*
 func registerUser(withEmail email: String , andPassword password: String , userCreationCompleat: @escaping (_ status: Bool , _ error: Error?) -> ()) {
 Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
 guard let user = authResult?.user else {
 userCreationCompleat(false, error)
 return
 }
 let userData = ["provider" : user.providerID , "email" : user.email ]
 DataService.instance.createUser(uid: user.uid, userData: userData as Dictionary<String, Any> )
 userCreationCompleat(true , nil)
 }
 }
 */
