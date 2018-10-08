//
//  UserCell.swift
//  breakpoint
//
//  Created by 김영석 on 2018. 10. 8..
//  Copyright © 2018년 김영석. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {

    @IBOutlet weak var checkImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    
    func configureCell(profileImage image: UIImage, email: String, isSelected: Bool) {
        self.profileImage.image = image
        self.emailLbl.text = email
        if isSelected {
            self.checkImage.isHidden = false
            
        } else {
            self.checkImage.isHidden = true
        }
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
