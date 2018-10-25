//
//  ProfileViewController.swift
//  NgheTuVan
//
//  Created by apple on 10/24/18.
//  Copyright © 2018 haiphat. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var profileTableView: UITableView!
    var vm = ProfileViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = ""
        self.navigationItem.hidesBackButton = true
        profileTableView.delegate = self
        profileTableView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vm.itemProfile.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = profileTableView.dequeueReusableCell(withIdentifier: "ProfileCell") as! ProfileTableViewController
        cell.imgView.image = vm.itemProfile[indexPath.row].iconName
        cell.imgNext.image = #imageLiteral(resourceName: "ic_next")
        cell.txtName.text = vm.itemProfile[indexPath.row].label
        return cell
    }
    

}
