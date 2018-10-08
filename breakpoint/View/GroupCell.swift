//
//  GroupCell.swift
//  breakpoint
//
//  Created by 김영석 on 2018. 10. 8..
//  Copyright © 2018년 김영석. All rights reserved.
//

import UIKit

class GroupCell: UITableViewCell {

    @IBOutlet weak var memberCountLbl: UILabel!
    @IBOutlet weak var groupTitleLbl: UILabel!
    @IBOutlet weak var groupDescLbl: UILabel!
    
    func configureCell(title: String, description: String, memberCount: Int) {
        self.groupTitleLbl.text = title
        self.groupDescLbl.text = description
        self.memberCountLbl.text = "\(memberCount) members."
    }
    
    
}
