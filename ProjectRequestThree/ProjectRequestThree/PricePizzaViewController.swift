//
//  PricePizzaViewController.swift
//  ProjectRequestThree
//
//  Created by Ana Paula Silva de Sousa on 17/03/23.
//

import UIKit

class PricePizzaViewController: UIViewController {

    @IBOutlet var labelPriceP: UILabel!
    @IBOutlet var labelPriceM: UILabel!
    @IBOutlet var labelPriceG: UILabel!
    @IBOutlet var labelPriceName: UILabel!
    @IBOutlet var buttonBack: UIButton!
    @IBOutlet var buttonFollow: UIButton!
    @IBOutlet var imagePrice: UIImageView!
    
    var pricePizza: PizzaElement?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelPriceName.text = pricePizza?.name
        labelPriceP.text = "PEQUENA - R$\(pricePizza?.priceP ?? 0)"
        labelPriceM.text = "MÉDIA - R$\(pricePizza?.priceM ?? 0)"
        labelPriceG.text = "GRANDE - R$\(pricePizza?.priceG ?? 0)"
        let urlImage = URL(string: pricePizza?.imageURL ?? "")
        imagePrice.sd_setImage(with: urlImage)
    }
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    @IBAction func follow(_ sender: Any) {
        if let rating = self.storyboard?.instantiateViewController(identifier: "rating") as? RatingViewController {
            rating.ratingPizza = self.pricePizza
            self.present(rating, animated: true)
        }
    }
}
