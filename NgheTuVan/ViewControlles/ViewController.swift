//
//  ViewController.swift
//  NgheTuVan
//
//  Created by apple on 10/17/18.
//  Copyright © 2018 haiphat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    internal var vm = LoginViewMode()
    
    @IBAction func btnLogin_TouchUpInside(_ sender: Any) {
        login()
    }
    
    
    private func login(){
        view.endEditing(true)
        vm.email = txtEmail.text
        vm.password = txtPassword.text
        vm.login(onSuccess: {_ in 
            print("thành công")
        }, onError: {_ in
            print("that bai")
        })
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

