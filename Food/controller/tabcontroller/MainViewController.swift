//
//  MainViewController.swift
//  Food
//
//  Created by Kholmumin Tursinboev on 14/02/22.
//

import UIKit

struct Data{
    var name:String?
    var isSelected:Bool
}


class MainViewController: UIViewController {

    @IBOutlet weak var searchbtn: UIButton!
    
    var data:[Data]=[
        Data(name: "Food", isSelected: true),
        Data(name: "Drinks", isSelected: false),
        Data(name: "Snacks", isSelected: false),
        Data(name: "Sauce", isSelected: false),
        Data(name: "Pizza", isSelected: false)

    ]
    
    
    @IBOutlet weak var morePressed: UIButton!
    
    @IBOutlet weak var foodCollection: UICollectionView!{
        didSet{
            foodCollection.delegate = self
            foodCollection.dataSource = self
            foodCollection.contentInset = UIEdgeInsets(top: 0, left: 50, bottom: 0, right: 16)
            foodCollection.register(UINib(nibName: "FoodCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FoodCollectionViewCell")
        }
    }
    @IBOutlet weak var typeCollectionView: UICollectionView!{
        didSet{
            typeCollectionView.delegate = self
            typeCollectionView.dataSource = self
            typeCollectionView.contentInset = UIEdgeInsets(top: 0, left: 50, bottom: 0, right: 20)
            typeCollectionView.register(UINib(nibName: "TypeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "TypeCollectionViewCell")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.isHidden = true
        //navSettings()
    }
    
    
//    func navSettings(){
//        let cart = UIBarButtonItem(image: UIImage(named: "cart"), style: .done, target: .none, action: nil)
//        let moree = UIBarButtonItem(image: UIImage(named: "more"), style: .done, target: self, action: #selector(morePressed))
//
//        navigationItem.rightBarButtonItems = [cart]
//        navigationItem.leftBarButtonItems=[moree]
//    }
    
    
    
    
//    @objc func morePressed(){
//        let vc = SettingsViewController(nibName: "SettingsViewController", bundle: nil)
//        vc.hidesBottomBarWhenPushed = true
//        vc.modalPresentationStyle = .fullScreen
//        self.present(vc, animated: true, completion: nil)
//    }
    
    
    
    @IBAction func searchPressed(_ sender: Any) {
        let vc = SearchViewController(nibName: "SearchViewController", bundle: nil)
        vc.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    @IBAction func morePressed(_ sender: Any) {
        let vc = SettingsViewController(nibName: "SettingsViewController", bundle: nil)
        vc.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    @IBAction func cartPressed(_ sender: Any) {
    }
}


extension MainViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == typeCollectionView{
            return data.count
        }else{
            return 10
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
     
        if collectionView == typeCollectionView{
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TypeCollectionViewCell", for: indexPath) as? TypeCollectionViewCell else {
                return UICollectionViewCell()
            }
            cell.updateCell(data: data[indexPath.row])
            return cell
        }else{
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FoodCollectionViewCell", for: indexPath) as? FoodCollectionViewCell else {
                return UICollectionViewCell()
            }
            return cell
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == typeCollectionView{
            return  CGSize(width: UIScreen.main.bounds.width/4 , height: typeCollectionView.frame.height)
        }else{
            return CGSize(
                width: UIScreen.main.bounds.width*220/414,
                height: UIScreen.main.bounds.height*321/896
            )
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == typeCollectionView {
            for dt in data.enumerated() {
                data[dt.offset].isSelected = false
            }
            data[indexPath.row].isSelected = true
            collectionView.reloadData()
        }else{
                let vc = FoodInfoViewController(nibName: "FoodInfoViewController", bundle: nil)
                vc.hidesBottomBarWhenPushed = true
                navigationController?.pushViewController(vc, animated: true)
        }
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        16
    }
    
   
}


