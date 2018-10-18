//
//  UserService.swift
//  NgheTuVan
//
//  Created by apple on 10/18/18.
//  Copyright © 2018 haiphat. All rights reserved.
//

import Foundation
import SwiftyJSON

class UserService {
    
    fileprivate static var instance : UserService?
    
    static var sharedInstance: UserService{
        if (instance == nil) {
            instance = UserService()
        }
        return instance!
    }
    
    static func destroy() {
        instance = nil
    }
    
    var accessToken : String? {
        get {
            if let token = UserDefaults.standard.object(forKey: "access_token") as? String {
                return token
            }
            return nil
        }
        set (newValue) {
            if let newValue = newValue {
                UserDefaults.standard.set(newValue, forKey: "access_token")
            }
            
        }
    }
    
    var refreshToken : String? {
        get {
            if let token = UserDefaults.standard.object(forKey: "refresh_token") as? String {
                return token
            }
            return nil
        }
        set (newValue) {
            if let newValue = newValue {
                UserDefaults.standard.set(newValue, forKey: "refresh_token")
            }
            
        }
    }
}

extension UserService{
    func saveLoginInfo(json: JSON?) -> Void{
        self.accessToken = json?["access_token"].string
        self.refreshToken = json?["refresh_token"].string
    }
}

class UserInfo {
    var firstName: String?
    var lastName : String?
    var email : String?
    var profileImageUrl : String?
    var phoneNumber : String?
    
    func getFullName() -> String {
        return (self.firstName ?? "") + " " + (self.lastName ?? "")
    }
}

