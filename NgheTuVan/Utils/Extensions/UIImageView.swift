//
//  UIImageView.swift
//  NgheTuVan
//
//  Created by apple on 10/18/18.
//  Copyright © 2018 haiphat. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView{
    
    
    func addUIImageView(_ view: UIView, _ icon: UIImage?, _ x: Double, _ y: Double, _ width: Double, _ height: Double) {
        let imgView = self
        imgView.frame = CGRect(x: x, y: y, width: width, height: height)
        imgView.image = icon
        view.addSubview(imgView)
    }
}

