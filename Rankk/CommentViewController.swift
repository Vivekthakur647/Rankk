//
//  CommentViewController.swift
//  Rankk
//
//  Created by Walkwel Technology on 21/11/17.
//  Copyright © 2017 Rankk. All rights reserved.
//

import UIKit
import XLActionController
class CommentViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    

    
    let minTextViewHeight: CGFloat = 32
    let maxTextViewHeight: CGFloat = 64
    
    @IBOutlet weak var CommentTable: UITableView!

let cell = CommentTableViewCell ()
    override func viewDidLoad() {
        super.viewDidLoad()
   self.tabBarController?.tabBar.isHidden=true

        CommentTable.estimatedRowHeight = 100
        CommentTable.rowHeight = UITableViewAutomaticDimension
   


    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : CommentTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CommentTableViewCell
        cell.selectionStyle = UITableViewCellSelectionStyle.none
          cell.commentdeleteButton.addTarget(self, action:#selector(handleRegister), for: .touchUpInside)
        if indexPath.row == 3 {
             cell.Comment.text = "“Share” vs. “Like” post is a great way for people to engage with your brand by offering their opinion  "
            
        }
        if indexPath.row == 6 {
            cell.Comment.text = "“Share” vs. “Like” post is a great way for people to engage with your brand by offering their opinion (which Facebook users love to do!). Basically, this post of"
            
        }
        return cell
        
    }
    func handleRegister(){
    
        
    }



}
