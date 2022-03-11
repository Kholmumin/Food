//
//  SettingsViewController.swift
//  Food
//
//  Created by Kholmumin Tursinboev on 17/02/22.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func profilePressed(_ sender: Any) {
        let vc = MyProfileViewController(nibName: "MyProfileViewController", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func ordersPressed(_ sender: Any) {
        
        let vc = NoOrdersViewController(nibName: "NoOrdersViewController", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func backPressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
