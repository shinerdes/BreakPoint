//
//  ShadowView.swift
//  breakpoint
//
//  Created by 김영석 on 2018. 10. 7..
//  Copyright © 2018년 김영석. All rights reserved.
//

import UIKit

class ShadowView: UIView {
    
    override func awakeFromNib() {
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius = 5
        self.layer.shadowColor = UIColor.black.cgColor
        super.awakeFromNib()
    }



}
