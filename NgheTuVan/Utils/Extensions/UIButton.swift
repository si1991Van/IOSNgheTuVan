//
//  UIButton.swift
//  NgheTuVan
//
//  Created by apple on 10/24/18.
//  Copyright © 2018 haiphat. All rights reserved.
//

import Foundation
import UIKit

extension UIButton{
    
    func addViewButton(_ icon: UIImage?, positionX: Double, positionY: Double ,width: Double, height: Double){
        let btnMenu = self
        btnMenu.frame = CGRect(x: positionX, y: positionX, width: width, height: height)
        btnMenu.setBackgroundImage(icon, for: .normal)
//        btnMenu.addTarget(self, action: #selector(MenuViewController.showMenu), for: .touchUpInside)
    }
}
