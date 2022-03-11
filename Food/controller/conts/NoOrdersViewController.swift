//
//  NoOrdersViewController.swift
//  Food
//
//  Created by Kholmumin Tursinboev on 17/02/22.
//

import UIKit

class NoOrdersViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Orders"
        
    }


    @IBAction func backPressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    

}
