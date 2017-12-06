//
//  CommunityViewController.swift
//  Rankk
//
//  Created by Walkwel Technology on 22/11/17.
//  Copyright © 2017 Rankk. All rights reserved.
//

import UIKit

class CommunityViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : ComminityTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ComminityTableViewCell
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        
        return cell
    }
}
