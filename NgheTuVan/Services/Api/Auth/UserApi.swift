//
//  UserApi.swift
//  NgheTuVan
//
//  Created by apple on 10/18/18.
//  Copyright © 2018 haiphat. All rights reserved.
//

import Foundation
import SwiftyJSON

class UserApi: DmgApi {
    
    var apiEndpoint: String{
        get {
            return "user/"
        }
    }
    
    var apiUrl: String {
        get {
            return Config.API_URL
        }
    }
    
    func register(_ email: String?, _ fullName: String?, _ password: String?, _ confirmPassword: String?, _phone: String?, onResponse: @escaping (Response) -> Void) -> Void {
        post(method: "signup", params: [
            "email": email ?? "",
            "fullname": fullName ?? "",
            "password": email ?? "",
            "password_confirmation": fullName ?? "",
            "phone": email ?? ""
            ], completion: onResponse)
    }

    func forgotPassword(_ email: String?, completioln: @escaping (Response) -> Void) -> Void {
        post(method: "forgotPassword", params: [
            "email": email ?? ""
            ], completion: completioln)
    }
    
    func updateProfile(_ userId: String?, _ fullName: String?, _ phone: String?, _ birthDay: String?, _ identity: String?, _ address: String?, onResponse: @escaping (Response) -> Void) -> Void {
        post(method: "edit/" + userId!, params: [
            "fullname": fullName ?? "",
            "phone": phone ?? "",
            "birthday": birthDay ?? "",
            "address": address ?? "",
            "identity": identity ?? ""
            ], completion: onResponse)
    }
    
    func getProfile(completion: @escaping (Response) -> Void) -> Void {
        let queryString = self.parseUrlQueryStringWithParams("user-profile", params: [:])
        self.get(queryString: queryString, completion: completion)
    }
    
}
