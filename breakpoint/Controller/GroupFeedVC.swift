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
    
    func initGroupData(forGroup group: Group) {
        
    }
    
    var group: Group?
    
    func initData(forGroup group: Group) {
        self.group = group
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sendBtnView.bindToKeyboard()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        groupTitleLbl.text = group?.groupTitle
        DataService.instance.getEmailsFor(group: self.group!) { (returnedEmails) in
            self.membersLbl.text = returnedEmails.joined(separator: ", ")

        }
        
    }

    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func sendBtnWasPressed(_ sender: Any) {
    }
    
}
