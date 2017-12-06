//
//  CommentTableViewCell.swift
//  Rankk
//
//  Created by Walkwel Technology on 21/11/17.
//  Copyright © 2017 Rankk. All rights reserved.
//

import UIKit

class CommentTableViewCell: UITableViewCell {

    @IBOutlet weak var commentdeleteButton: UIButton!
   
   
    @IBOutlet weak var Comment: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
