//
//  SelectedTourTableViewController.swift
//  TripApp
//
//  Created by maks on 04.11.2023.
//

import UIKit

class SelectedTourTableViewController: UITableViewController {

    var kindTours = KindTour.kindTout
    var price = KindTour.tourPrices
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        212
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        kindTours.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SelectedTourTableViewCell
        cell.isUserInteractionEnabled = false
        
        cell.layer.cornerRadius = 10
        cell.backgroundColor = UIColor.white
       //cell.layer.borderWidth = 1.0
       //cell.layer.borderColor = UIColor.gray.cgColor
        let price = price[indexPath.row]
        let tours = kindTours[indexPath.row]
        cell.nameTourLabel.text = tours
        cell.priceLabel.text = price
        cell.imageViewCell.image = UIImage(named: tours)
        
        return cell
    }
    
}
   
