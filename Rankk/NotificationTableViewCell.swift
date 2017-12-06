//
//  NotificationTableViewCell.swift
//  Rankk
//
//  Created by Walkwel Technology on 22/11/17.
//  Copyright © 2017 Rankk. All rights reserved.
//

import UIKit

class NotificationTableViewCell: UITableViewCell {

    @IBOutlet weak var NotifyPicture: UIImageView!
    @IBOutlet weak var FollowUnfollowButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
