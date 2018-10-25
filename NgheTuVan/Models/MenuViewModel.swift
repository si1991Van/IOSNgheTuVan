//
//  MenuViewModel.swift
//  NgheTuVan
//
//  Created by apple on 10/24/18.
//  Copyright © 2018 haiphat. All rights reserved.
//

import Foundation
import UIKit

class MenuViewModel {
    
    var secssion = ["hồ Sơ cá nhân", "Tiện ích hệ thống"]
    
    var itemSecssion = [[
        ProfileModel(label: Loc("Thông tin tài khoản"), iconName : #imageLiteral(resourceName: "layer_1")),
        ProfileModel(label: Loc("Lịch sử giao dich"), iconName: #imageLiteral(resourceName: "layer_4")),
        ProfileModel(label: Loc("Quản lý khách hàng ký gửi"), iconName: #imageLiteral(resourceName: "layer_5")),
        ], [
            ProfileModel(label: Loc("Kho hàng bất động sản"), iconName : #imageLiteral(resourceName: "layer_1")),
            ProfileModel(label: Loc("Bảng hàng online"), iconName: #imageLiteral(resourceName: "layer_4")),
            ProfileModel(label: Loc("Huấn luyên - Đào tạo"), iconName: #imageLiteral(resourceName: "layer_5")),
            ProfileModel(label: Loc("Đặc quyền tư vấn"), iconName: #imageLiteral(resourceName: "layer_2")),
            ProfileModel(label: Loc("Đăng xuất"), iconName: #imageLiteral(resourceName: "layer_2")),
            ] ]
    
}

class ProfileModel {
    required init(label : String, iconName : UIImage) {
        self.label = label
        self.iconName = iconName
    }
    var label: String
    var iconName : UIImage
    
}
