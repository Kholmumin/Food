//
//  HomeViewController.swift
//  Food
//
//  Created by Kholmumin Tursinboev on 11/02/22.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.isHidden = true

    }


    @IBAction func getStartedPressed(_ sender: Any) {
        let vc = LogInViewController(nibName: "LogInViewController", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
    

}
