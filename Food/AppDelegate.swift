//
//  AppDelegate.swift
//  Food
//
//  Created by Kholmumin Tursinboev on 11/02/22.
//

import UIKit
import IQKeyboardManagerSwift
@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        IQKeyboardManager.shared.enable = true
        window = UIWindow()
        let vc = MainTBCView()
        let nc = UINavigationController(rootViewController: vc)
        //let vc = SettingsViewController(nibName: "SettingsViewController", bundle: nil)
        window?.rootViewController = nc
        window?.makeKeyAndVisible()
        navSettings()
        return true
    }

    
   
    func navSettings(){
       UINavigationBar.appearance().tintColor = UIColor.black
    }

}

