//
//  SelectedTourTableViewCell.swift
//  TripApp
//
//  Created by maks on 04.11.2023.
//

import UIKit

class SelectedTourTableViewCell: UITableViewCell {

    
    @IBOutlet weak var imageViewCell: UIImageView!
    @IBOutlet weak var nameTourLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageViewCell.layer.cornerRadius = 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
