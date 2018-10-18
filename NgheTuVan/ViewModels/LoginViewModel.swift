//
//  LoginViewModel.swift
//  NgheTuVan
//
//  Created by apple on 10/17/18.
//  Copyright © 2018 haiphat. All rights reserved.
//

import Foundation
import SwiftyJSON

class LoginViewMode{
    var email: String?
    var password: String?
    
    func login(onSuccess: @escaping (_ succes: String?) -> Void, onError: @escaping (_ errorMessage: String?) -> Void) {
        OauthApi().login(email, password, completion: {
            response in
            DispatchQueue.main.async {
                if response.isSuccess(){
                    //luu lại token
                    onSuccess("login in thành công")
                }else{
                    onError(response.errorMessage)
                }
            }
            
        })
    }
}

