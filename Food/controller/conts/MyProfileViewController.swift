//
//  MyProfileViewController.swift
//  Food
//
//  Created by Kholmumin Tursinboev on 17/02/22.
//

import UIKit

class MyProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "My Profile"
        self.navigationController?.navigationBar.prefersLargeTitles = true

    }


  
    @IBAction func backPressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    

}
