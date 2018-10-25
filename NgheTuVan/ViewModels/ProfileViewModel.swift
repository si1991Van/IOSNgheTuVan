//
//  ProfileViewModel.swift
//  NgheTuVan
//
//  Created by apple on 10/25/18.
//  Copyright © 2018 haiphat. All rights reserved.
//

import Foundation
import UIKit

class ProfileViewModel {
    
    var itemProfile = [
        ProfileModel(label: Loc("Thông tin tài khoản"), iconName : #imageLiteral(resourceName: "layer_1")),
        ProfileModel(label: Loc("Liên hệ"), iconName: #imageLiteral(resourceName: "layer_4")),
        ProfileModel(label: Loc("Đổi mật khẩu"), iconName: #imageLiteral(resourceName: "layer_5")),
        ProfileModel(label: Loc("Lịch sử giao dịch"), iconName: #imageLiteral(resourceName: "layer_5")),
        ProfileModel(label: Loc("Đăng xuất"), iconName: #imageLiteral(resourceName: "layer_5")),
    ]
}
