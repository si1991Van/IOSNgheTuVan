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
    
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var viewBorder: UIView!
    
    internal var vm = LoginViewMode()
    
    
    
    
    @IBAction func btnLogin(_ sender: Any) {
        DgmWaiting.sharedInstance().show()
        vm.email = txtEmail.text
        vm.password = txtPassword.text
        vm.login(onSuccess: onLoginSuccessful, onError: onLoginFailed)
    }
    
    private func onLoginSuccessful(){
        DgmWaiting.sharedInstance().dismiss()
        let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
        self.present(viewController, animated: false, completion: nil)
    }
    
    private func onLoginFailed(errorMessage: String?){
        DgmWaiting.sharedInstance().dismiss()
        DgmAlert.error(title: errorMessage)
    }
    
    
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

