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

    }
    
    @IBAction func back(_ sender: Any) {
    }
    
    @IBAction func follow(_ sender: Any) {
    }
}
