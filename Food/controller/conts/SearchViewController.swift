//
//  SearchViewController.swift
//  Food
//
//  Created by Kholmumin Tursinboev on 15/02/22.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchCollection: UICollectionView!{
        didSet{
            searchCollection.delegate = self
            searchCollection.dataSource = self
            searchCollection.register(UINib(nibName: "SearchCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "SearchCollectionViewCell")
            searchCollection.contentInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true

    }
    @IBAction func leftPressed(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)
    }
}

//MARK: CollectionViewSearchCollectionViewCell

extension SearchViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SearchCollectionViewCell", for: indexPath) as? SearchCollectionViewCell else{
            return UICollectionViewCell()
        }
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: UIScreen.main.bounds.width / 2 - 35, height: (UIScreen.main.bounds.width / 2 - 50)*25/15)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        20
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        20
    }
    
    
    
}
