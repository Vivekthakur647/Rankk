//
//  SuggestionsViewController.swift
//  Rankk
//
//  Created by Walkwel Technology on 21/11/17.
//  Copyright © 2017 Rankk. All rights reserved.
//

import UIKit

class SuggestionsViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tabBarController?.tabBar.isHidden=true
        // Do any additional setup after loading the view.
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : SuggetionsTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SuggetionsTableViewCell
        cell.selectionStyle = UITableViewCellSelectionStyle.none

        return cell
    }
}

