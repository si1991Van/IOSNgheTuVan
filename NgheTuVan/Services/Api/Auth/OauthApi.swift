//
//  OauthApi.swift
//  NgheTuVan
//
//  Created by apple on 10/17/18.
//  Copyright © 2018 haiphat. All rights reserved.
//

import Foundation
import Alamofire

class OauthApi: DmgApi {
    
    var apiEndpoint: String {
        get{
            return "oauth"
        }
    }
    
    func login(_ email: String?, _ password: String?, completion: @escaping (Response) -> Void) -> Void {
        post(method: "token", params: [
            "username": email ?? "",
            "password": password ?? "",
            "grant_type": "password",
            "client_id": Config.CLIENT_ID,
            "client_secret": Config.CLIENT_SECRET
            ], completion: completion)
        
        
    }
    
}

