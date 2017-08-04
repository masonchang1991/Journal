//
//  AddJournalLayout.swift
//  Journal
//
//  Created by Ｍason Chang on 2017/8/4.
//  Copyright © 2017年 Ｍason Chang iOS#4. All rights reserved.
//

import UIKit


extension AddJournalViewController {
    
    func addLayout(titleLable: UILabel, contentsTextView: UITextView, saveButton: UIButton) {
        
        titleLabel.addCharactersSpacing(spacing: 0, text: "待傳入")
        titleLabel.textColor = UIColor.slate
        
        
        contentsTextView.textColor = UIColor(red: 131.0/255.0, green: 156.0/255.0, blue: 152.0/255.0, alpha: 1.0)
        

        
        saveButton.backgroundColor = UIColor.dustyOrange
        saveButton.setTitle("Save", for: .normal)
        saveButton.setTitleColor(UIColor.white, for: .normal)
        saveButton.layer.cornerRadius = 22
        
        saveButton.layer.shadowOffset = CGSize(width: 0, height: 0)
        saveButton.layer.shadowRadius = 10
        saveButton.layer.shadowColor = UIColor(red: 247.0/255.0, green: 174.0/255.0, blue: 163.0/255.0, alpha: 1.0).cgColor

        
        
        
    }
    
    
    
    
    
    
    
}
