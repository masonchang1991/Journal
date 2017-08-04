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
        journalCell.journalImageView.layer.cornerRadius = 8
        
        journalCell.journalImageView.clipsToBounds = true
        
        journalCell.journalContainerView.layer.shadowOffset = CGSize(width: 0, height: 0)
        journalCell.journalContainerView.layer.shadowOpacity = 1.0
        journalCell.journalContainerView.layer.shadowRadius = 10
        journalCell.journalContainerView.layer.shadowColor = UIColor.coolGrey.cgColor
        journalCell.journalContainerView.backgroundColor = UIColor.clear
        journalCell.journalContainerView.clipsToBounds = false
        
        journalCell.journalTitleLabel.text = journals[indexPath.row].title
        journalCell.journalTitleLabel.textColor = UIColor.slate
        
        journalCell.sperator.backgroundColor = UIColor.coolGrey
        journalCell.speratorMiddleBall.layer.borderColor = UIColor.coolGrey.cgColor
        journalCell.speratorMiddleBall.layer.borderWidth = 0.5
        journalCell.speratorMiddleBall.layer.cornerRadius = journalCell.speratorMiddleBall.bounds.width/2
        
        return journalCell
    }
    
}
