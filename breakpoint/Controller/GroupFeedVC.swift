//
//  GroupFeedVC.swift
//  breakpoint
//
//  Created by 김영석 on 2018. 10. 8..
//  Copyright © 2018년 김영석. All rights reserved.
//

import UIKit

class GroupFeedVC: UIViewController {
    @IBOutlet weak var membersLbl: UILabel!
    @IBOutlet weak var groupTitleLbl: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var sendBtnView: UIView!
    
    @IBOutlet weak var messageTextField: UITextField!
    
    @IBOutlet weak var sendBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        sendBtnView.bindToKeyboard()
        // Do any additional setup after loading the view.
    }

    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func sendBtnWasPressed(_ sender: Any) {
    }
    
}
