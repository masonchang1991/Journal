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
        
        if addNew == true {
            
            titleTextView.placeholder = "Your Title.............."
            
            contentsTextView.placeholder = "What you wnat to says ......."
            
            saveButton.setTitle("Save", for: .normal)
            
            pickImageView.backgroundColor = UIColor.clear
            
            let gradient = CAGradientLayer()
            gradient.frame = defaultBackgroundView.bounds
            gradient.colors = [UIColor.slate.cgColor, UIColor(red: 26.0/255.0, green: 34.0/255.0, blue: 38.0/255.0, alpha: 1.0).cgColor]
            gradient.startPoint = CGPoint(x: 0.5, y: 0)
            gradient.endPoint = CGPoint(x: 0.5, y: 1.0)
            
            defaultImageView.tintColor = UIColor.white
            defaultImageView.backgroundColor = UIColor.clear
            
            defaultBackgroundView.layer.addSublayer(gradient)
            
        } else {
            
            saveButton.setTitle("Save", for: .normal)
        }
        
        titleTextView.textColor = UIColor.slate
        
        contentsTextView.textColor = UIColor(red: 131.0/255.0, green: 156.0/255.0, blue: 152.0/255.0, alpha: 1.0)
        
        saveButton.backgroundColor = UIColor.dustyOrange
        saveButton.setTitleColor(UIColor.white, for: .normal)
        saveButton.layer.cornerRadius = 22
        saveButton.layer.shadowOffset = CGSize(width: 0, height: 0)
        saveButton.layer.shadowRadius = 10
        saveButton.layer.shadowOpacity = 1.0
        saveButton.layer.shadowColor = UIColor(red: 247.0/255.0, green: 174.0/255.0, blue: 163.0/255.0, alpha: 1.0).cgColor
        
        closeButton.tintColor = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 0.95)
        closeButton.layer.shadowOffset = CGSize(width: 0, height: 0)
        closeButton.layer.shadowRadius = 4
        closeButton.layer.shadowColor = UIColor(red: 62.0/255.0, green: 62.0/255.0, blue: 62.0/255.0, alpha: 0.5).cgColor
        closeButton.layer.shadowOpacity = 1.0
        closeButton.alpha = 1.0
        
    }
    
    func image(fromLayer layer: CALayer) -> UIImage {
        UIGraphicsBeginImageContext(layer.frame.size)
        layer.render(in: UIGraphicsGetCurrentContext()!)
        let outputImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return outputImage!
    }
    
}
