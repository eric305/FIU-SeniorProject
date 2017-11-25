//
//  SideMenuTopTableViewCell.swift
//  LifeManagementApp
//
//  Created by Eric Rado on 11/25/17.
//  Copyright © 2017 SeniorProject. All rights reserved.
//

import UIKit

class SideMenuTopTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var userProfileImg: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setUserImage()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
     func setUserImage(){
        userProfileImg.layer.masksToBounds = false
        userProfileImg.layer.cornerRadius = userProfileImg.frame.height / 2
        userProfileImg.clipsToBounds = true
     }

}