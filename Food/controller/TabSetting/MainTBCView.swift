//
//  MainTBCView.swift
//  Food
//
//  Created by Kholmumin Tursinboev on 14/02/22.
//

import UIKit

class MainTBCView: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tabSettings()
        // Do any additional setup after loading the view.
    }
    

    func tabSettings(){
        let vc1 = UINavigationController(rootViewController: MainViewController(nibName: "MainViewController", bundle: nil))
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc1.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        vc1.hidesBottomBarWhenPushed = true
        
        let vc2 = HeartViewController(nibName: "HeartViewController", bundle: nil)
        vc2.tabBarItem.image = UIImage(systemName: "heart")
        vc2.tabBarItem.selectedImage = UIImage(systemName: "heart.fill")
        
        let vc3 = PersonViewController(nibName: "PersonViewController", bundle: nil)
        vc3.tabBarItem.image = UIImage(systemName: "person")
        vc3.tabBarItem.image = UIImage(systemName: "person.fill")
        
        let vc4 = ReloadViewController(nibName: "ReloadViewController", bundle: nil)
        vc4.tabBarItem.image = UIImage(systemName: "clock.arrow.circlepath")
        vc4.tabBarItem.selectedImage = UIImage(systemName: "clock.arrow.circlepath")

        
        
        let vc = [vc1,vc2,vc3,vc4]
        
        viewControllers = vc
        tabBar.backgroundColor = .none
        tabBar.tintColor = IColor.hexStrToColor(hex: "FA4A0C")
        
    }

}
