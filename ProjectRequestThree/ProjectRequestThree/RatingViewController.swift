//
//  RatingViewController.swift
//  ProjectRequestThree
//
//  Created by Ana Paula Silva de Sousa on 17/03/23.
//

import UIKit

class RatingViewController: UIViewController {

    @IBOutlet var imageRating: UIImageView!
    @IBOutlet var labelName: UILabel!
    @IBOutlet var labelRating: UIView!
    @IBOutlet var buttonBack: UIButton!
    
    var ratingPizza: PizzaElement?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
