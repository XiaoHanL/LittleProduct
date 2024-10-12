//
//  PhotoFooterView.swift
//  LittleProduct
//
//  Created by hank on 2024/10/9.
//

import UIKit

class PhotoFooterView: UICollectionReusableView {
    @IBOutlet weak var addPhotoBtn: UIButton!
    var addPhotoBtnClickBlock:(()->Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        addPhotoBtn.layer.borderWidth = 1
        addPhotoBtn.layer.borderColor = UIColor.tertiaryLabel.cgColor
        addPhotoBtn.layer.cornerRadius = 8
        addPhotoBtn.addTarget(self, action: #selector(addPhotoBtnClick), for: .touchUpInside)
    }
    
    @objc func addPhotoBtnClick(){
        if let addPhotoBtnClickBlock = addPhotoBtnClickBlock {
            addPhotoBtnClickBlock()
        }
    }
}
