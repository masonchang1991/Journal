//
//  AddJournalViewController.swift
//  Journal
//
//  Created by Ｍason Chang on 2017/8/4.
//  Copyright © 2017年 Ｍason Chang iOS#4. All rights reserved.
//

import UIKit

class AddJournalViewController: UIViewController, UINavigationControllerDelegate, UIGestureRecognizerDelegate {

    @IBOutlet weak var pickImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var contentsTextView: UITextView!
    
    @IBOutlet weak var saveButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(getUserPhoto))
        pickImageView.addGestureRecognizer(tap)
        pickImageView.isUserInteractionEnabled = true
       
        addLayout(titleLable: titleLabel, contentsTextView: contentsTextView, saveButton: saveButton)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}




