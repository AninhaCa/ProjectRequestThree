//
//  RatingViewController.swift
//  ProjectRequestThree
//
//  Created by Ana Paula Silva de Sousa on 17/03/23.
//

import UIKit
import SDWebImage

class RatingViewController: UIViewController {

    @IBOutlet var imageRating: UIImageView!
    @IBOutlet var labelName: UILabel!
    
    @IBOutlet var labelRating: UILabel!
    @IBOutlet var buttonBack: UIButton!
    
    var ratingPizza: PizzaElement?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelName.text = "AVALIAÇÃO CLIENTE"
        labelRating.text = "Para Nossos Clientes, a Pizza \(ratingPizza?.name ?? "") está na posiçao - \(ratingPizza?.rating ?? 0)/5 - de Aprovação."
        let urlImage = URL(string: ratingPizza?.imageURL ?? "")
        imageRating.sd_setImage(with: urlImage)
    }
    
    @IBAction func back(_ sender: Any) {
        buttonBack.backgroundColor = .orange
        self.dismiss(animated: true)
    }
}
