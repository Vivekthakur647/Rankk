//
//  OtherPRofileViewController.swift
//  Rankk
//
//  Created by Walkwel Technology on 23/11/17.
//  Copyright © 2017 Rankk. All rights reserved.
//

import UIKit

class OtherPRofileViewController: UIViewController,UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden=true
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.row==0 {
            let firstCell : OtherProfileCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "First", for: indexPath) as! OtherProfileCollectionViewCell
            return firstCell
            
        }
        else{
            let GalarryCell : OthersGallaryCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! OthersGallaryCollectionViewCell
            return GalarryCell
        }
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

