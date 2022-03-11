//
//  LogInViewController.swift
//  Food
//
//  Created by Kholmumin Tursinboev on 11/02/22.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var logInView: UIView!
    @IBOutlet weak var SignInView: UIView!
    
    @IBOutlet weak var emailTxf: UITextField!
    
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var logView: UIView!{
        didSet{
            logView.layer.shadowColor = UIColor.black.cgColor
            logView.layer.shadowOffset = CGSize(width: 1, height: 1)
            logView.layer.shadowRadius = 5
            logView.layer.shadowOpacity = 0.3
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        SignInView.isHidden = true
//        loginBtn.isEnabled = false

    }
    @IBAction func logInPressed(_ sender: Any) {
        if emailTxf.text!.hasSuffix("@gmail.com")  && passwordTxt.text!.count >= 6{
            let vc = MainTBCView()
            navigationController?.pushViewController(vc, animated: true)
        }
       
    }
    @IBAction func logInTopPressed(_ sender: Any) {
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseInOut) { [self] in
            SignInView.isHidden = true
            logInView.isHidden = false
        }
    }
    @IBAction func signInTopPressed(_ sender: Any) {
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseInOut) { [self] in
            SignInView.isHidden = false
            logInView.isHidden = true
        }
    }
    

}


