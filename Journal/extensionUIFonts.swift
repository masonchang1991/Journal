//
//  extensionUIFonts.swift
//  Journal
//
//  Created by Ｍason Chang on 2017/8/4.
//  Copyright © 2017年 Ｍason Chang iOS#4. All rights reserved.
//

import UIKit


extension UILabel {
    func addCharactersSpacing( spacing: CGFloat, text: String ) {
        let attributedString = NSMutableAttributedString(string: text)
        attributedString.addAttribute( NSKernAttributeName, value: spacing, range: NSRange(location: 0, length: text.characters.count ))
        self.attributedText = attributedString
    }
}

extension UILabel {
    func addTextSpacing() {
        if let textString = text {
            let attributedString = NSMutableAttributedString(string: textString)
            attributedString.addAttribute(NSKernAttributeName, value: 0.1, range: NSRange(location: 0, length: attributedString.length - 1))
            attributedText = attributedString
        }
    }
}

// Text styles

extension UIFont {
    class func textStyle3Font() -> UIFont? {
        return UIFont(name: "Helvetica-Bold", size: 80.0)
    }
    
    class func textStyle7Font() -> UIFont? {
        return UIFont(name: "Georgia-Bold", size: 50.0)
    }
    
    class func textStyle26Font() -> UIFont {
        return UIFont.systemFont(ofSize: 30.0, weight: UIFontWeightRegular)
    }
    
    class func textStyle19Font() -> UIFont? {
        return UIFont(name: "LuxiMono", size: 24.0)
    }
    
    class func textStyle23Font() -> UIFont {
        return UIFont.systemFont(ofSize: 20.0, weight: UIFontWeightHeavy)
    }
    
    class func textStyleFont() -> UIFont? {
        return UIFont(name: "PingFangTC-Medium", size: 20.0)
    }
    
    class func textStyle5Font() -> UIFont? {
        return UIFont(name: "Georgia-Bold", size: 18.0)
    }
    
    class func textStyle14Font() -> UIFont? {
        return UIFont(name: "Georgia", size: 18.0)
    }
    
    class func textStyle6Font() -> UIFont? {
        return UIFont(name: "LuxiMono", size: 18.0)
    }
    
    class func textStyle8Font() -> UIFont {
        return UIFont.systemFont(ofSize: 16.0, weight: UIFontWeightSemibold)
    }
    
    class func textStyle22Font() -> UIFont {
        return UIFont.systemFont(ofSize: 16.0, weight: UIFontWeightSemibold)
    }
    
    class func textStyle11Font() -> UIFont? {
        return UIFont(name: "Georgia", size: 16.0)
    }
    
    class func textStyle20Font() -> UIFont {
        return UIFont.systemFont(ofSize: 16.0, weight: UIFontWeightRegular)
    }
    
    class func textStyle4Font() -> UIFont? {
        return UIFont(name: "Georgia", size: 14.0)
    }
    
    class func textStyle9Font() -> UIFont? {
        return UIFont(name: "Georgia", size: 14.0)
    }
    
    class func textStyle2Font() -> UIFont? {
        return UIFont(name: "PingFangTC-Regular", size: 14.0)
    }
    
    class func textStyle15Font() -> UIFont {
        return UIFont.systemFont(ofSize: 13.0, weight: UIFontWeightRegular)
    }
    
    class func textStyle13Font() -> UIFont {
        return UIFont.systemFont(ofSize: 12.0, weight: UIFontWeightBold)
    }
    
    class func textStyle18Font() -> UIFont? {
        return UIFont(name: "Georgia", size: 12.0)
    }
    
    class func textStyle21Font() -> UIFont? {
        return UIFont(name: "Georgia", size: 12.0)
    }
    
    class func textStyle17Font() -> UIFont? {
        return UIFont(name: "LuxiMono", size: 12.0)
    }
    
    class func textStyle16Font() -> UIFont? {
        return UIFont(name: "LuxiMono", size: 12.0)
    }
    
    class func textStyle10Font() -> UIFont? {
        return UIFont(name: "LuxiMono", size: 12.0)
    }
    
    class func textStyle12Font() -> UIFont {
        return UIFont.systemFont(ofSize: 12.0, weight: UIFontWeightRegular)
    }
}
