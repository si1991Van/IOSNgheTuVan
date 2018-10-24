//
//  UIView.swift
//  NgheTuVan
//
//  Created by apple on 10/18/18.
//  Copyright © 2018 haiphat. All rights reserved.
//

import Foundation
import UIKit


extension UIView{
    
     func setViewBorder(){
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = 5
    }
    
    func addUIView(_ view: UIView, _ x: Double, _ y: Double, _ width: Double, _ height: Double){
        let viewMenu = self
        viewMenu.frame = CGRect(x: x, y: y, width: width, height: height)
        view.addSubview(viewMenu)
    }
    
}
