//
//  ComminityTableViewCell.swift
//  Rankk
//
//  Created by Walkwel Technology on 22/11/17.
//  Copyright © 2017 Rankk. All rights reserved.
//

import UIKit

class ComminityTableViewCell: UITableViewCell {

    @IBOutlet weak var CommunityLable: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        CommunityLable.layer.borderColor=UIColor.white.cgColor
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
