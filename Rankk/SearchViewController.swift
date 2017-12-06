//
//  SearchViewController.swift
//  Rankk
//
//  Created by Walkwel Technology on 21/11/17.
//  Copyright © 2017 Rankk. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    @IBOutlet weak var SerchBArrr: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden=true
        // Do any additional setup after loading the view.
        
            SerchBArrr.backgroundColor = UIColor.black
        SerchBArrr.barStyle = UIBarStyle.black
        for view in SerchBArrr.subviews {
            for subview in view.subviews {
                if subview.isKind(of: UITextField.self) {
                    subview.backgroundColor = UIColor.black
                    let textField: UITextField = subview as! UITextField
                    textField.backgroundColor = UIColor.black
                    textField.textColor = UIColor.white
                }
            }
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : SearchTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SearchTableViewCell
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        
        return cell
    }
    
}
