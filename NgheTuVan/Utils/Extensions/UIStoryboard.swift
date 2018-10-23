//
//  UIStoryboard.swift
//  NgheTuVan
//
//  Created by apple on 10/22/18.
//  Copyright © 2018 haiphat. All rights reserved.
//

import Foundation
import UIKit

extension UIStoryboard {
    
    class func initViewController(storyboard storyboardName: String, viewController vcIndentifier: String) -> UIViewController? {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: vcIndentifier)
    }
}
