//
//  FoodInfoViewController.swift
//  Food
//
//  Created by Kholmumin Tursinboev on 16/02/22.
//

import UIKit

class FoodInfoViewController: UIViewController {

    @IBOutlet weak var pageController: UIPageControl!
    @IBOutlet weak var foodInfoCollection: UICollectionView!{
        didSet{
            foodInfoCollection.delegate = self
            foodInfoCollection.dataSource = self
            foodInfoCollection.register(UINib(nibName: "InfoFoodCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "InfoFoodCollectionViewCell")
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()


        let heart = UIBarButtonItem(image: UIImage(systemName: "heart"), style: .done, target: self, action: #selector(heartPressed))
        pageController.currentPage = 0
        pageController.numberOfPages = 10
        pageController.addTarget(self, action: #selector(pageControlEditing), for: .touchDragInside)
        navigationItem.rightBarButtonItems=[heart]
    }
    
    @objc func heartPressed(){
        
    }
    @IBAction func addToCartPressed(_ sender: Any) {
        
        let vc = CartViewController(nibName: "CartViewController", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
        
    }
    @IBAction func foodCollectionControll(_ sender: Any) {
        
    }
    
    
    @IBAction func backPressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
}


   


extension FoodInfoViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "InfoFoodCollectionViewCell", for: indexPath) as? InfoFoodCollectionViewCell else{
            return UICollectionViewCell()
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: UIScreen.main.bounds.width, height: foodInfoCollection.frame.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        UIView.animate(withDuration: 0.1, delay: 0, options: .curveEaseIn) {
            self.pageController.transform = CGAffineTransform(scaleX: 0.99, y: 0.99)
            self.foodInfoCollection.transform = CGAffineTransform(scaleX: 0.995, y: 0.995)
        } completion: { _ in
            self.foodInfoCollection.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.pageController.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.pageController?.currentPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
        }
    
    
}

}
extension FoodInfoViewController {

    //        MARK: - page controller editing
        @objc func pageControlEditing(){
            foodInfoCollection.contentOffset = CGPoint(x:pageController.numberOfPages, y: 1)
            foodInfoCollection.reloadData()
            
        }
        
    }
