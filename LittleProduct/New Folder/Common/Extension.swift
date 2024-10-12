//
//  Extension.swift
//  LittleProduct
//
//  Created by hank on 2024/9/27.
//

import UIKit


extension UIView {
    
    @IBInspectable var hkRadius: CGFloat {
        set {
            self.layer.cornerRadius = newValue
        }
        get {
            self.layer.cornerRadius
        }
    }
    
}

extension Bundle {
    var appName: String {
        if let appName = localizedInfoDictionary?["CFBundleDisplayName"] as? String {
            return appName
        }else{
            return infoDictionary!["CFBundleDisplayName"] as! String
        }
    }
}
