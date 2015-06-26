//
//  PlayerCell.swift
//  Ratings
//
//  Created by Raul Ernesto Escobedo Herrera on 6/24/15.
//  Copyright (c) 2015 Raul Ernesto Escobedo Herrera. All rights reserved.
//

import UIKit

class PlayerCell: UITableViewCell {
    
    @IBOutlet weak var gameLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
