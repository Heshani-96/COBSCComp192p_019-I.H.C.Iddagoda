//
//  foodViewController.swift
//  CafeNIBM_1
//
//  Created by Heshani Chamalka on 2021-03-07.
//

import UIKit

class foodViewController: UIViewController {

    var name = ["Bubble Tea","Burger King","Donuts","garlic bread","Indian Food","KFC chicken bucket","Mongolian Rice","Seafood Pizza","Sri Vihar","Tacos"]

    var price = ["Rs/- 1000","thousand rupees","thousand rupees","thousand rupees","thousand rupees","thousand rupees","thousand rupees","thousand rupees","thousand rupees","thousand rupees"]
    
    
    @IBOutlet weak var foodtableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}

extension foodViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? restaurentTableViewCell
        cell?.nameLabel.text = name[indexPath.row]
        cell?.priceLabel.text = price[indexPath.row]
        cell?.img.image = UIImage(named: name[indexPath.row])
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let viewcontroller = storyboard?.instantiateViewController(identifier: "foodDetailViewController") as? foodDetailViewController
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "foodDetailViewController") as? foodDetailViewController
        
        vc?.image = UIImage(named: name[indexPath.row])!
        vc?.name = name[indexPath.row]
        vc?.price = price[indexPath.row]
        vc?.descriptionLbl = name[indexPath.row]
        
        
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}
