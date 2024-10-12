//
//  PhotoCell.swift
//  LittleProduct
//
//  Created by hank on 2024/10/9.
//

import UIKit

class PhotoCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)

    }
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.layer.cornerRadius = 8
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}
