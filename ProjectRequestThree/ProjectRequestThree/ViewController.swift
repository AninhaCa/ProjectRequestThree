//
//  ViewController.swift
//  ProjectRequestThree
//
//  Created by Ana Paula Silva de Sousa on 17/03/23.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet var myTableView: UITableView!
    
    var arrayPizza: [PizzaElement]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    func setupTableView() {
        requestPizza()
        myTableView.register(UINib(nibName: "MyCustomCellXIB", bundle: nil), forCellReuseIdentifier: "cellXIB")
        myTableView.dataSource = self
        myTableView.delegate = self
    }
    
    func requestPizza() {
        AF.request("https://p3teufi0k9.execute-api.us-east-1.amazonaws.com/v1/pizza", method: .get).response { response in
            let pizza = try? JSONDecoder().decode([PizzaElement].self, from: response.data ?? Data())
            self.arrayPizza = pizza
            self.myTableView.reloadData()
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayPizza?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cellXIB", for: indexPath) as? MyCustomCellXIB {
            cell.setupXIB(pizzaElement: arrayPizza?[indexPath.row])
            
            return cell
        }
        
        return UITableViewCell()
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let price = self.storyboard?.instantiateViewController(identifier: "price") as? PricePizzaViewController {
            price.pricePizza = self.arrayPizza?[indexPath.row]
            self.present(price, animated: true)
        }
    }
}
