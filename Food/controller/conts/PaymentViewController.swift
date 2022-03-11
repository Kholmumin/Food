//
//  PaymentViewController.swift
//  Food
//
//  Created by Kholmumin Tursinboev on 17/02/22.
//

import UIKit

class PaymentViewController: UIViewController {

    @IBOutlet weak var fourthBtn: UIButton!
    @IBOutlet weak var thirdBtn: UIButton!
    @IBOutlet weak var secondBtn: UIButton!
    @IBOutlet weak var firstBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Payment"
        navigationController?.navigationBar.prefersLargeTitles = true
    }


    @IBAction func fp(_ sender: Any) {
        firstBtn.setImage(UIImage(named: "pressed"), for: .normal)
        secondBtn.setImage(UIImage(named: "unpressed"), for: .normal)

    }
    
    @IBAction func sp(_ sender: Any) {
        secondBtn.setImage(UIImage(named: "pressed"), for: .normal)
        firstBtn.setImage(UIImage(named: "unpressed"), for: .normal)
    }
    
    @IBAction func tp(_ sender: Any) {
        thirdBtn.setImage(UIImage(named: "pressed"), for: .normal)
        fourthBtn.setImage(UIImage(named: "unpressed"), for: .normal)
    }
 
    @IBAction func fourtPressed(_ sender: Any) {
        fourthBtn.setImage(UIImage(named: "pressed"), for: .normal)
        thirdBtn.setImage(UIImage(named: "unpressed"), for: .normal)
    }
    
    
    @IBAction func backPressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
