//
//  NotiEditVC.swift
//  LittleProduct
//
//  Created by hank on 2024/10/8.
//

import UIKit

class NoteEditVC: UIViewController {

    @IBOutlet weak var photoCollectionView: UICollectionView!
    
    let photos = ["1","2","3"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension NoteEditVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: kNoteEditCellID, for: indexPath) as! PhotoCell
        cell.imageView.image = UIImage(named: photos[indexPath.item])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
       
        switch kind {
        case UICollectionView.elementKindSectionFooter:
            let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: kPhotoFooterID, for: indexPath) as! PhotoFooterView
             return footer
        default:
            return UICollectionReusableView()
        }
    }
    
}
extension NoteEditVC: UICollectionViewDelegate {
    
}
