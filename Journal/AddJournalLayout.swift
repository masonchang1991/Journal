//
//  AddJournalLayout.swift
//  Journal
//
//  Created by Ｍason Chang on 2017/8/4.
//  Copyright © 2017年 Ｍason Chang iOS#4. All rights reserved.
//

import UIKit


extension AddJournalViewController {
    
    func addLayout(titleTextView: UITextView, contentsTextView: UITextView, saveButton: UIButton, closeButton: UIButton) {
        
        if titleTextView.text == "" {
            
            titleTextView.text = "Title"
        } else {
            
            
        }
        titleTextView.textColor = UIColor.slate
        
        
        contentsTextView.textColor = UIColor(red: 131.0/255.0, green: 156.0/255.0, blue: 152.0/255.0, alpha: 1.0)
        

        
        saveButton.backgroundColor = UIColor.dustyOrange
        if addNew == true {
        saveButton.setTitle("Save", for: .normal)
        } else {
            saveButton.setTitle("change", for: .normal)
        }
        saveButton.setTitleColor(UIColor.white, for: .normal)
        saveButton.layer.cornerRadius = 22
        
        saveButton.layer.shadowOffset = CGSize(width: 0, height: 0)
        saveButton.layer.shadowRadius = 10
        saveButton.layer.shadowColor = UIColor(red: 247.0/255.0, green: 174.0/255.0, blue: 163.0/255.0, alpha: 1.0).cgColor

        
        closeButton.tintColor = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 0.95)
        closeButton.layer.shadowOffset = CGSize(width: 0, height: 0)
        closeButton.layer.shadowRadius = 4
        closeButton.layer.shadowColor = UIColor(red: 62.0/255.0, green: 62.0/255.0, blue: 62.0/255.0, alpha: 0.5).cgColor
        
        
    }
    
    
    
    
    
    
    
}
