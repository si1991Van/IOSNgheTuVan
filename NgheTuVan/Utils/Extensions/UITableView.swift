//
//  UITableView.swift
//  NgheTuVan
//
//  Created by apple on 10/24/18.
//  Copyright © 2018 haiphat. All rights reserved.
//

import Foundation
import UIKit

extension UITableView{
    
    func addUITableVIew(_ view : UIView, delegate : UITableViewDelegate?, dataSource: UITableViewDataSource, x: Double, y: Double, width: Double, height: Double){
        let tblViewMenu = self
        tblViewMenu.frame = CGRect(x: x, y: y, width: width, height: height)
        view.addSubview(tblViewMenu)
        tblViewMenu.delegate = delegate
        tblViewMenu.dataSource = dataSource
//        tblViewMenu.register(cellTableView.self, forCellReuseIdentifier: "cell")
        
    }
}
