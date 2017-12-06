//
//  HomeViewController.swift
//  Rankk
//
//  Created by Walkwel Technology on 21/11/17.
//  Copyright © 2017 Rankk. All rights reserved.
//

import UIKit
import XLActionController

class HomeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource ,UICollectionViewDataSource{
 var refreshControl = UIRefreshControl()
    
    
    @IBOutlet weak var HomeTabel: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

                
        
        refreshControl = UIRefreshControl()
        refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh")
        refreshControl.addTarget(self, action: #selector(handleRefresh(refreshControl:)), for: UIControlEvents.valueChanged)
    
        HomeTabel.addSubview(refreshControl) // not required when using UITableViewController
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
    @IBAction func ReoportUSer(_ sender: AnyObject) {
        
        let actionController = TweetbotActionController()
        
    
        actionController.addAction(Action("Report", style: .default, handler: { action in
        }))
        
        actionController.addSection(Section())
        actionController.addAction(Action("Cancel", style: .cancel, handler:nil))
        
        present(actionController, animated: true, completion: nil)


        
      
        
        // Instantiate custom action sheet controller
         }
    override func viewWillAppear(_ animated: Bool) {
         self.tabBarController?.tabBar.isHidden=false
        let tabBar = self.tabBarController!.tabBar
        tabBar.selectionIndicatorImage = UIImage().createSelectionIndicator(color: UIColor.orange, size: CGSize.init(width: tabBar.frame.width/CGFloat(tabBar.items!.count), height: tabBar.frame.height), lineWidth: 2.0)
    }
   
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 2 {
            let SuggetionCell : SuggetionHomeTableViewCell = tableView.dequeueReusableCell(withIdentifier: "SuggetionCell", for: indexPath) as! SuggetionHomeTableViewCell
             SuggetionCell.selectionStyle = UITableViewCellSelectionStyle.none
            return SuggetionCell

        }
        let cell : HomeTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HomeTableViewCell
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        return cell
        
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row==2 {
            if let cell = cell as? SuggetionHomeTableViewCell
            {
                cell.SuggetionCollectionView.dataSource = self
                cell.SuggetionCollectionView.reloadData()
            }
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    if indexPath.row == 2 {
  
      
        let height = 170 as CGFloat
        return height
        }
    return 410
    }
    


    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 25
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : SuggetionHomeCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "SuggetionCell", for: indexPath) as! SuggetionHomeCollectionViewCell
        
        return cell
    }
}
extension UIImage {
    func createSelectionIndicator(color: UIColor, size: CGSize, lineWidth: CGFloat) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(CGRect(origin: CGPoint(x: 0,y :size.height - lineWidth), size: CGSize(width: size.width, height: lineWidth)))
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
}
