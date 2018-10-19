//
//  ViewController.swift
//  NgheTuVan
//
//  Created by apple on 10/17/18.
//  Copyright © 2018 haiphat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewDeveloper: UIView!
    @IBOutlet weak var viewPartner: UIView!
    @IBOutlet weak var viewCustomers: UIView!
    @IBOutlet weak var viewConsultants: UIView!
    @IBOutlet weak var viewInvestors: UIView!
    
    @IBOutlet weak var viewBorder: UIView!
    internal var vm = LoginViewMode()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewDeveloper.setViewBorder()
        self.viewPartner.setViewBorder()
        self.viewCustomers.setViewBorder()
        self.viewConsultants.setViewBorder()
        self.viewInvestors.setViewBorder()
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

