//
//  SearchCollectionViewCell.swift
//  Food
//
//  Created by Kholmumin Tursinboev on 15/02/22.
//

import UIKit

class SearchCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var allView: UIView!{
        didSet{
//
//            allView.layer.shadowColor = UIColor.black.cgColor
//            allView.layer.shadowOpacity = 0.2
//            allView.layer.shadowOffset = .zero
//            allView.layer.shadowRadius = 3
//            allView.layer.shouldRasterize = true

            
            
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
