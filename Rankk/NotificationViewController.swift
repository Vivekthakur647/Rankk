//
//  NotificationViewController.swift
//  Rankk
//
//  Created by Walkwel Technology on 22/11/17.
//  Copyright © 2017 Rankk. All rights reserved.
//

import UIKit

class NotificationViewController:UIViewController ,UITableViewDataSource,UITableViewDelegate{
     var refreshControl = UIRefreshControl()
    @IBOutlet weak var NotificationTable: UITableView!
    var followImage = "Follow"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        refreshControl = UIRefreshControl()
        refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh")
        refreshControl.addTarget(self, action: #selector(handleRefresh(refreshControl:)), for: UIControlEvents.valueChanged)
        
        NotificationTable.addSubview(refreshControl) // not required when using UITableViewController
        
        // Do any additional setup after loading the view.
    }
    
    func handleRefresh(refreshControl: UIRefreshControl) {
        // Do some reloading of data and update the table view's data source
        // Fetch more objects from a web service, for example...
        //
        //    // Simply adding an object to the data source for this example
        //    let newMovie = Movie(title: "Serenity", genre: "Sci-fi")
        //    movies.append(newMovie)
        //
        //    movies.sort() { $0.title < $1.title }
        //
        //    self.tableView.reloadData()
        //    refreshControl.endRefreshing()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : NotificationTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NotificationTableViewCell
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        
        if indexPath.row == 3 {
            cell.FollowUnfollowButton.isHidden=false
            cell.NotifyPicture.isHidden=true
            
        }
        cell.FollowUnfollowButton.addTarget(self, action:#selector(FollowUnfollw), for: .touchUpInside)
        
        if followImage == "Follow" {
            cell.FollowUnfollowButton.backgroundColor=UIColor.init(red: 200/266, green: 122/266, blue: 47/266, alpha: 1.0)
        }
        else
        {
             cell.FollowUnfollowButton.backgroundColor=UIColor.white
        }
        
        return cell
    }
    func FollowUnfollw()
    {
      followImage = "UnFollow"
        NotificationTable.reloadData()
    }
}
