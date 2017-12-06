//
//  ProfileViewController.swift
//  Rankk
//
//  Created by Walkwel Technology on 21/11/17.
//  Copyright © 2017 Rankk. All rights reserved.
//

import UIKit
import XLActionController
class ProfileViewController: UIViewController,UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource {
    @IBOutlet weak var profileCollection: UICollectionView!
    var RankType = "World"
    var firstCell = ProfileCollectionViewCell()
    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view.
    }
   
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.row==0 {
           firstCell = collectionView.dequeueReusableCell(withReuseIdentifier: "First", for: indexPath) as! ProfileCollectionViewCell
            firstCell.RankButtonOutlet.titleLabel?.textColor = UIColor.white
            firstCell.RankButtonOutlet.addTarget(self, action:#selector(handleRegister), for: .touchUpInside)
            if self.RankType == "World" {
                firstCell.RankButtonOutlet.setTitle("70 | World", for: UIControlState.normal)
                
            }
            else if self.RankType == "Country" {
                
                firstCell.RankButtonOutlet.setTitle("8 | Country | India", for: UIControlState.normal)
            }
            else if self.RankType == "City" {
                
                 firstCell.RankButtonOutlet.setTitle("3 | City | Chandigharh", for: UIControlState.normal)
            }
            else
            {
                
                firstCell.RankButtonOutlet.setTitle("Rank Hided", for: UIControlState.normal)
                
            }
            return firstCell
            
        }
        else{
            let GalarryCell : GallaryViewCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! GallaryViewCollectionViewCell
            return GalarryCell
        }
    }
    func handleRegister(){
        
       
        
        let actionController = TweetbotActionController()
        
        
        actionController.addAction(Action("70 | World", style: .default, handler: { action in
            self.RankType = "World"
             self.firstCell.RankButtonOutlet.setTitle("70 | World", for: UIControlState.normal)
        }))
        actionController.addAction(Action("8 | Country | India", style: .default, handler: { action in
             self.RankType = "Country"
    
            self.firstCell.RankButtonOutlet.setTitle("8 | Country | India", for: UIControlState.normal)
        }))
        actionController.addAction(Action("3 | City | Chandigharh", style: .default, handler: { action in
            self.RankType = "City"
             self.firstCell.RankButtonOutlet.setTitle("3 | City | Chandigharh", for: UIControlState.normal)
        }))
        actionController.addSection(Section())
        actionController.addAction(Action("Hide Rank", style: .cancel, handler:{ action in
            self.firstCell.RankButtonOutlet.setTitle("Rank Hided", for: UIControlState.normal)
        }))
        
        present(actionController, animated: true, completion: nil)
        
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        
      
            if indexPath.row > 0 {
                return CGSize(width: collectionView.frame.size.width/3.1, height: collectionView.frame.size.width/3.1)            }
            else{
                return CGSize(width: collectionView.frame.size.width, height: 315)
            }
     
        
       
        
        
    }
    
    @nonobjc internal func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 1.0
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
    
    
  
 
}



