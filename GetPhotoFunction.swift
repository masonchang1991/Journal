//
//  GetPhotoFunction.swift
//  Journal
//
//  Created by Ｍason Chang on 2017/8/4.
//  Copyright © 2017年 Ｍason Chang iOS#4. All rights reserved.
//

import UIKit

extension AddJournalViewController: UIImagePickerControllerDelegate {
    
    func getUserPhoto() {
        let picker: UIImagePickerController = UIImagePickerController()
        
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.photoLibrary) {
            
            picker.sourceType = UIImagePickerControllerSourceType.photoLibrary
            picker.allowsEditing = true
            picker.delegate = self
            self.present(picker, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: Any]) {
        
        picker.dismiss(animated: true, completion: nil) //關掉相簿
        self.pickImageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage //將選取圖片存入我那個imageview中
        
        if let image = self.pickImageView.image {
            //拿照片比例啦
            let ratio = image.size.width / image.size.height
            let newHeight = self.pickImageView.frame.width / ratio
            
            //set照片長寬
            self.pickImageView.frame.size = CGSize(width: self.pickImageView.frame.width, height: newHeight)
            //set照片中心
            self.pickImageView.center = CGPoint(x: self.pickImageView.frame.width * 0.5, y: self.pickImageView.frame.height * 0.5)
            //放照片啦
            self.pickImageView.image = image
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        
        picker.dismiss(animated: true, completion: nil)
    }
    

    
    
}
