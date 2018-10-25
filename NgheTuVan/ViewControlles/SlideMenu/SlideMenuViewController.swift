//
//  SlideMenuViewController.swift
//  NgheTuVan
//
//  Created by apple on 10/24/18.
//  Copyright © 2018 haiphat. All rights reserved.
//

import UIKit

class SlideMenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var viewMenu : UIView = UIView()
    var tblViewMenu : UITableView = UITableView()
    
    let vm = MenuViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setButton()
        setupViewMenu()
        setTableVIew()
        setupHeaderView()
        swipeGesture()
        navigationController?.navigationBar.barTintColor = UIColor.hex("#f5821f").withAlphaComponent(0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func swipeGesture() {
        let right = UISwipeGestureRecognizer(target: self, action: #selector(self.openMenu))
        right.direction = .right
        view.addGestureRecognizer(right)
        let left = UISwipeGestureRecognizer(target: self, action: #selector(self.closeMenu))
        left.direction = .left
        view.addGestureRecognizer(left)
    }
    
    @objc func openMenu(){
        UIView.animate(withDuration: 0.5) {
            self.viewMenu.frame.origin.x += self.view.frame.width / 1.25
        }
    }
    
    @objc func closeMenu(){
        UIView.animate(withDuration: 0.5, animations: {
            self.viewMenu.frame.origin.x -= self.view.frame.width / 1.25
        })
    }
    
    
    func setButton(){
        let btnMenu : UIButton = UIButton()
        btnMenu.addViewButton(#imageLiteral(resourceName: "ic_menu_slide"), positionX: 10, positionY: 10, width: 30, height: 30)
        navigationController?.navigationBar.addSubview(btnMenu)
        btnMenu.addTarget(self, action: #selector(self.showMenu), for: .touchUpInside)
    }
    
    @objc func showMenu() {
        if (viewMenu.frame.origin.x < 0) {
            openMenu()
        }
        else {
            closeMenu()
        }
    }
    
    
    func setupViewMenu() {
        viewMenu.addUIView((navigationController?.view)!, Double(-view.frame.width / 1.25), Double(20 + (navigationController?.navigationBar.frame.height)!), Double(view.frame.width / 1.25), Double(view.frame.height - 20 + (navigationController?.navigationBar.frame.height)!))
        viewMenu.backgroundColor = UIColor.white
    }
    
    func setupHeaderView(){
        let viewHearde = UIButton()
        viewHearde.addViewButton(nil, positionX: 0, positionY: 0, width: Double(viewMenu.frame.width), height: 120)
        viewMenu.addSubview(viewHearde)
        
        let cellImg = UIImageView()
        cellImg.addUIImageView(viewHearde, #imageLiteral(resourceName: "layer_1"), 25, Double(viewHearde.frame.height / 2), 50, 50)
        
        UILabel().addUILable(viewHearde, 90, Double(viewHearde.frame.height / 2), Double(viewHearde.frame.width), 30, "nguyên van si", UIFont.boldSystemFont(ofSize: 16))
       UILabel().addUILable(viewHearde, 90, Double(viewHearde.frame.height / 2 + 20), Double(viewHearde.frame.width), 30, "si@gmail.com", UIFont.boldSystemFont(ofSize: 12))
        
        viewHearde.addTarget(self, action: #selector(self.pushProfile), for: .touchUpInside)
    }
    
    @objc func pushProfile(){
    }
    
    func setTableVIew() {
        let tblViewMenu = UITableView()
        tblViewMenu.addUITableVIew(viewMenu, delegate: self, dataSource: self, x: 0, y: 120, width: Double(viewMenu.frame.width), height: Double(viewMenu.frame.height))
        tblViewMenu.register(CellTableView.self, forCellReuseIdentifier: "cell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vm.itemSecssion[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CellTableView
        
        let itemSecssion = vm.itemSecssion[indexPath.section][indexPath.row]
        
        UIImageView().addUIImageView(cell, itemSecssion.iconName, 25, 30, 30, 30)
        
        UILabel().addUILable(cell, 80, Double(cell.frame.height/2), Double(cell.frame.width), 30, itemSecssion.label, nil)
        return cell
    }
    
    private func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) -> CFloat {
        return 30
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return vm.secssion.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: viewMenu.frame.width, height: 40))
        UILabel().addUILable(view, 15, 10, Double(viewMenu.frame.width - 30), 40, vm.secssion[section], UIFont.boldSystemFont(ofSize: 20))
        return view
    }
    
}

class CellTableView: UITableViewCell {
}

