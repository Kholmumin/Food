//
//  CartDetailsTableViewCell.swift
//  Food
//
//  Created by Kholmumin Tursinboev on 16/02/22.
//

import UIKit

protocol CartDetailsTableViewCellDelegate{
    func countDetails(countItems:Int? ,index:Int?)
}

class CartDetailsTableViewCell: UITableViewCell {

    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var foodNameLbl: UILabel!
    @IBOutlet weak var countlbl: UILabel!
    
    var count = 1
    
    
    var delegate:CartDetailsTableViewCellDelegate?
    var index:IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

 
    @IBAction func minusPressed(_ sender: Any) {
        if count > 1{
            count -= 1
            countlbl.text = String(count)
        }
        
        delegate?.countDetails(countItems: count, index: index?.row)
        
    }
    
    @IBAction func plusPressed(_ sender: Any) {
        count+=1
        countlbl.text = String(count)
        delegate?.countDetails(countItems: count, index: index?.row)

    }
    
    
    func updateCell(myData:datas){
        count = myData.countLabel!
        foodImage.image = myData.myImage
        countlbl.text = "\(myData.countLabel!)"
        priceLbl.text = myData.price
        foodNameLbl.text = myData.foodName
    }
}
