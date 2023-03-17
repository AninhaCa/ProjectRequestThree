//
//  OneViewController.swift
//  ProjectRequestThree
//
//  Created by Ana Paula Silva de Sousa on 17/03/23.
//

import UIKit

class OneViewController: UIViewController {
    
    @IBOutlet var play: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func play(_ sender: Any) {
        if let tableView = self.storyboard?.instantiateViewController(identifier: "table") {
            play.backgroundColor = .orange
            self.present(tableView, animated: true)
        }
    }
}
