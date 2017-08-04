//
//  AddJournalViewController.swift
//  Journal
//
//  Created by Ｍason Chang on 2017/8/4.
//  Copyright © 2017年 Ｍason Chang iOS#4. All rights reserved.
//

import UIKit
import CoreData

class AddJournalViewController: UIViewController, UINavigationControllerDelegate, UIGestureRecognizerDelegate {
    
    @IBOutlet weak var pickImageView: UIImageView!
    
    @IBOutlet weak var defaultBackgroundView: UIView!
    
    @IBOutlet weak var titleTextView: UITextView!
    @IBOutlet weak var defaultImageView: UIImageView!
    
    @IBOutlet weak var contentsTextView: UITextView!
    
    @IBOutlet weak var saveButton: UIButton!
    
    @IBOutlet weak var closeButton: UIButton!
    
    var addJournalManager: NSManagedObjectContext!
    
    var journals = [Journal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //swiftlint:disable force_cast
        addJournalManager = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        //swiftlint:enable force_cast
        let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView
        
        statusBar?.backgroundColor = UIColor.clear
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(choosePhotoOrCamera))
        
        pickImageView.addGestureRecognizer(tap)
        
        pickImageView.isUserInteractionEnabled = true
        
        if addNew == true {
            
        } else {
            
            loadData()
            titleTextView.text = journals[editCellIndexPath].title
            contentsTextView.text = journals[editCellIndexPath].content
            pickImageView.image = UIImage(data: journals[editCellIndexPath].image! as Data)
            
        }
        
        addLayout(titleTextView: titleTextView, contentsTextView: contentsTextView, saveButton: saveButton, closeButton: closeButton)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func choosePhotoOrCamera() {
        
        // 建立一個提示框
        let alertController = UIAlertController(
            title: "Note",
            message: "請選擇圖片加入方式",
            preferredStyle: .alert)
        
        // 建立[取消]按鈕
        let cancelAction = UIAlertAction(
            title: "取消",
            style: .cancel,
            handler: nil)
        alertController.addAction(cancelAction)
        
        // 建立[相簿]按鈕
        let photoAction = UIAlertAction(
            title: "相簿",
            style: .default) {
                (_: UIAlertAction!) -> Void in
                
                self.getUserPhoto()
        }
        
        alertController.addAction(photoAction)
        
        // 建立[相機]按鈕
        let cameraAction = UIAlertAction(
            title: "相機",
            style: .default) {
                (_: UIAlertAction!) -> Void in
                
                self.getUserCamera()
                
        }
        alertController.addAction(cameraAction)
        self.present(
            alertController,
            animated: true,
            completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadData() {
        
        journals = load(nsObjectArray: journals, nsObjectContext: addJournalManager)
        
    }
    
}
