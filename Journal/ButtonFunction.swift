//
//  ButtonFunction.swift
//  Journal
//
//  Created by Ｍason Chang on 2017/8/4.
//  Copyright © 2017年 Ｍason Chang iOS#4. All rights reserved.
//

import UIKit

extension AddJournalViewController {
    
    @IBAction func saveToLocal(_ sender: UIButton) {
        
        let alertController = UIAlertController(
            title: "確定存擋？",
            message: "",
            preferredStyle: .alert)
        
        // 建立[取消]按鈕
        let cancelAction = UIAlertAction(
            title: "取消",
            style: .cancel,
            handler: nil)
        alertController.addAction(cancelAction)
        
        // 建立[OK]按鈕
        let okAction = UIAlertAction(
            title: "確定",
            style: .default) {
                (_: UIAlertAction!) -> Void in
                
                if addNew == true {
                    let journal = Journal(context: self.addJournalManager)
                    guard let image = self.pickImageView.image else {
                        return
                    }
                    guard  let imageNSData = UIImageJPEGRepresentation(image, 1) else {
                        return
                    }
                    
                    journal.content = self.contentsTextView.text
                    journal.title = self.titleTextView.text
                    journal.image = NSData(data: imageNSData)
                    
                    do {
                        try self.addJournalManager.save()
                        self.loadData()
                    } catch {
                        print("counld not save \(error)")
                    }
                    
                } else {
                    
                    guard let image = self.pickImageView.image else {
                        return
                    }
                    guard  let imageNSData = UIImageJPEGRepresentation(image, 1) else {
                        return
                    }
                    
                    self.journals[editCellIndexPath].content = self.contentsTextView.text
                    self.journals[editCellIndexPath].title = self.titleTextView.text
                    self.journals[editCellIndexPath].image = NSData(data: imageNSData)
                    
                    do {
                        try self.addJournalManager.save()
                        self.loadData()
                    } catch {
                        print("counld not save \(error)")
                    }
                    
                }
                
                self.dismiss(animated: true, completion: nil)
        }
        
        alertController.addAction(okAction)
        self.present(
            alertController,
            animated: true,
            completion: nil)
        
    }
    
    @IBAction func close(_ sender: UIButton) {
        
        let alertController = UIAlertController(
            title: "確定離開",
            message: "離開文字與圖片將不會存取",
            preferredStyle: .alert)
        
        // 建立[取消]按鈕
        let cancelAction = UIAlertAction(
            title: "取消",
            style: .cancel,
            handler: nil)
        alertController.addAction(cancelAction)
        
        // 建立[OK]按鈕
        let okAction = UIAlertAction(
            title: "確定",
            style: .default) {
                (_: UIAlertAction!) -> Void in
                
                self.dismiss(animated: true, completion: nil)
        }
        
        alertController.addAction(okAction)
        self.present(
            alertController,
            animated: true,
            completion: nil)
        
    }
    
}
