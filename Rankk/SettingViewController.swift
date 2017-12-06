//
//  SettingViewController.swift
//  Rankk
//
//  Created by Walkwel Technology on 22/11/17.
//  Copyright © 2017 Rankk. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var items = NSArray()
    override func viewDidLoad() {
        super.viewDidLoad()
self.navigationController?.isNavigationBarHidden=false
        // Do any additional setup after loading the view.
        items=NSArray.init()
        items = ["Edit Profile","Edit Bio","Block List","Change password","Privacy Policy","Terms & Conditions","Logout"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : SettingTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SettingTableViewCell
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        cell.LableName.text = String(format : "%@",items[indexPath.row] as! CVarArg)
        
        cell.ShowHideView.isHidden=true
        if indexPath.row == 3 || indexPath.row == 5{
           cell.ShowHideView.isHidden=false
            
        }
        
        
        return cell
    }


}
