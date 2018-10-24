//
//  UILabel.swift
//  NgheTuVan
//
//  Created by apple on 10/24/18.
//  Copyright © 2018 haiphat. All rights reserved.
//

import Foundation
import UIKit

extension UILabel{
    
    
    func addUILable(_ view: UIView, _ x: Double, _ y: Double, _ width: Double, _ height: Double){
        let lable = self
        lable.frame = CGRect(x: x, y: y, width: width, height: height)
        view.addSubview(lable)
    }
    
    func addUILable(_ view: UIView, _ x: Double, _ y: Double, _ width: Double, _ height: Double, _ text: String?, _ font: UIFont?){
        let lable = UILabel()
        lable.frame = CGRect(x: x, y: y, width: width, height: height)
        view.addSubview(lable)
        lable.text = text
        lable.font = font
    }
}
