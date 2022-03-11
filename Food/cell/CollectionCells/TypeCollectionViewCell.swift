//
//  TypeCollectionViewCell.swift
//  Food
//
//  Created by Kholmumin Tursinboev on 14/02/22.
//

import UIKit

class TypeCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var nameLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateCell(data: Data){
        nameLbl.text = data.name
        bottomView.isHidden = !data.isSelected
        if data.isSelected {
            nameLbl.textColor = IColor.hexStrToColor(hex: "#FA4A0C")
        }else{
            nameLbl.textColor = UIColor.systemGray
        }
    }

}
