//
//  CreatePostVC.swift
//  breakpoint
//
//  Created by 김영석 on 2018. 10. 7..
//  Copyright © 2018년 김영석. All rights reserved.
//

import UIKit
import Firebase

class CreatePostVC: UIViewController {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var sendBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.delegate = self

        // Do any additional setup after loading the view.
    }

    @IBAction func sendBtnWasPressed(_ sender: Any) {
        if textView.text != nil && textView.text != "Say something here..." {
            sendBtn.isEnabled = false
            DataService.instance.uploadPost(withMessage: textView.text, forUID: (Auth.auth().currentUser?.uid)!, withGroupKey: nil, sendComplete: { (isComplete) in
                if isComplete {
                    self.sendBtn.isEnabled = true
                    self.dismiss(animated: true, completion: nil)
                } else {
                    self.sendBtn.isEnabled = true
                    print("There was an error")
                }
            })
        }
    }
    
    @IBAction func closeBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
}

extension CreatePostVC: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = ""
    }
    
}
