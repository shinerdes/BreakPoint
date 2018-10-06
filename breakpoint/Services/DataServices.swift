//
//  DataServices.swift
//  breakpoint
//
//  Created by 김영석 on 2018. 10. 5..
//  Copyright © 2018년 김영석. All rights reserved.
//

import Foundation
import Firebase

let DB_BASE = Database.database().reference()

class DataService {
    static let instance = DataService()
    
    private var _REF_BASE = DB_BASE
    private var _REF_USERS = DB_BASE.child("users")
    private var _REF_GROUPS = DB_BASE.child("groups")
    private var _REF_FEED = DB_BASE.child("feed")
    
    var REF_BASE: DatabaseReference {
        return _REF_BASE
    }
    
    var REF_USERS: DatabaseReference {
        return REF_USERS
    }
    
    var REF_GROUPS: DatabaseReference {
        return REF_GROUPS
    }
    
    var REF_FEED: DatabaseReference {
        return REF_FEED
    }
    
    
    func createDBUser(uid: String, userData: Dictionary<String, Any>!) {
        REF_USERS.child(uid).updateChildValues(userData)
        
        
    }
    
}
