//
//  CartViewController.swift
//  Food
//
//  Created by Kholmumin Tursinboev on 16/02/22.
//

import UIKit




class CartViewController: UIViewController {

    @IBOutlet weak var cartDetailsTable: UITableView!{
        didSet{
            cartDetailsTable.delegate = self
            cartDetailsTable.dataSource = self
            cartDetailsTable.register(UINib(nibName: "CartDetailsTableViewCell", bundle: nil), forCellReuseIdentifier: "CartDetailsTableViewCell")
        }
    }
   
    var info:[datas] = [
        datas(myImage: UIImage(named: "food2"),foodName: "Fishwith mix orange....", price: "#1,300", countLabel: 1),
        datas(myImage: UIImage(named: "food2"),foodName: "Veggie tomato mix", price: "#1,400", countLabel: 1),
        datas(myImage: UIImage(named: "food2"), foodName: "Fishwith mix orange....", price: "#1,300", countLabel: 1),
        datas(myImage: UIImage(named: "food2"),foodName: "Veggie tomato mix", price: "#1,400", countLabel: 1),
        datas(myImage: UIImage(named: "food2"),foodName: "Fishwith mix orange....", price: "#1,300", countLabel: 1),
        datas(myImage: UIImage(named: "food2"),foodName: "Veggie tomato mix", price: "#1,400", countLabel: 1),
        datas(myImage: UIImage(named: "food2"),foodName: "Fishwith mix orange....", price: "#1,300", countLabel: 1),
        datas(myImage: UIImage(named: "food2"),foodName: "Veggie tomato mix", price: "#1,400", countLabel: 1),
        datas(myImage: UIImage(named: "food2"), foodName: "Fishwith mix orange....", price: "#1,300", countLabel: 1),
     
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Cart"

    }
    
    
    
    
    @IBAction func completeOrderPressed(_ sender: Any) {
        let vc = DeliveryViewController(nibName: "DeliveryViewController", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func backPressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
    
}
extension CartViewController:UITableViewDelegate,UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    

    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "", handler: {a,b,c in
            // example of your delete function
            self.info.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        })
        
        let favourite = UIContextualAction(style: .normal, title: "", handler: {a,b,c in
            // example of your delete function
            self.info.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        })

        favourite.image = UIImage(named: "favourite")
        favourite.backgroundColor = IColor.hexStrToColor(hex: "E5E5E5")
        
        deleteAction.image = UIImage(named: "deleteCellIcon")
        deleteAction.backgroundColor = IColor.hexStrToColor(hex: "E5E5E5")
        return UISwipeActionsConfiguration(actions: [deleteAction,favourite])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        info.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CartDetailsTableViewCell", for: indexPath) as? CartDetailsTableViewCell else{
            return UITableViewCell()
        }
        cell.updateCell(myData: info[indexPath.row])
        cell.index = indexPath
        cell.delegate = self

        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        160
    }
    
    
}
extension CartViewController:CartDetailsTableViewCellDelegate{
    func countDetails(countItems: Int?, index: Int?) {
        print("index", index)
        info[index!].countLabel = countItems!
        cartDetailsTable.reloadData()
    }
}
