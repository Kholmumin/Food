//
//  DeliveryViewController.swift
//  Food
//
//  Created by Kholmumin Tursinboev on 17/02/22.
//

import UIKit

class DeliveryViewController: UIViewController {

    @IBOutlet weak var firstBtn: UIButton!
    @IBOutlet weak var secondBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Checkout"
        
    }

    @IBAction func proceedPaymentPressed(_ sender: Any) {
        let vc = PaymentViewController(nibName: "PaymentViewController", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func firstBtnPressed(_ sender: Any) {
        firstBtn.setImage(UIImage(named: "pressed"), for: .normal)
        secondBtn.setImage(UIImage(named: "unpressed"), for: .normal)
    }
    
    @IBAction func secondBtnPressed(_ sender: Any) {
        secondBtn.setImage(UIImage(named: "pressed"), for: .normal)
        firstBtn.setImage(UIImage(named: "unpressed"), for: .normal)
    }
    
    @IBAction func backPressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
