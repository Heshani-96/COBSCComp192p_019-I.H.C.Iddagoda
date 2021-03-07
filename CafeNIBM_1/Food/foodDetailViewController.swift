//
//  foodDetailViewController.swift
//  CafeNIBM_1
//
//  Created by Heshani Chamalka on 2021-03-07.
//

import UIKit

class foodDetailViewController: UIViewController {
    
    @IBOutlet weak var detailFoodImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var image = UIImage()
    var name = ""
    var price = ""
    var descriptionLbl = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailFoodImageView.image = image
        nameLabel.text = name
        priceLabel.text = price
        descriptionLabel.text = descriptionLbl
    }
    

    @IBAction func addToCartButton(_ sender: Any) {
    }
    
}
