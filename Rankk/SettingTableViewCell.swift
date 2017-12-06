//
//  SettingTableViewCell.swift
//  Rankk
//
//  Created by Walkwel Technology on 22/11/17.
//  Copyright © 2017 Rankk. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {

    @IBOutlet weak var ShowHideView: UIView!
    @IBOutlet weak var LableName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
