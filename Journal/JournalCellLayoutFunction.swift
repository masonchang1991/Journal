//
//  JournalCellLayoutFunction.swift
//  Journal
//
//  Created by Ｍason Chang on 2017/8/4.
//  Copyright © 2017年 Ｍason Chang iOS#4. All rights reserved.
//

import UIKit


extension JournalListViewController {
    
    func journalCellLayout(_ journalCell: JournalListTableViewCell, rowAt indexPath: IndexPath) -> UITableViewCell {

        
        journalCell.journalImageView.image = UIImage(data: journals[indexPath.row].image! as Data)
        journalCell.journalImageView.clipsToBounds = true
        journalCell.journalImageView.layer.shadowOffset = CGSize(width: 0, height: 0)
        journalCell.journalImageView.layer.shadowPath = UIBezierPath(rect: journalCell.journalImageView.bounds).cgPath
        journalCell.journalImageView.layer.shadowRadius = 10
        journalCell.journalImageView.layer.shadowColor = UIColor.coolGrey.cgColor
        journalCell.journalImageView.layer.cornerRadius = 8
       
        
        journalCell.journalTitleLabel.text = journals[indexPath.row].title
        journalCell.journalTitleLabel.textColor = UIColor.slate

        
        
        
        return journalCell
    }
    
    
    
    
}
