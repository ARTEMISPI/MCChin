//
//  GamesTableViewCell.swift
//  MCChin
//
//  Created by Artemis Papunidis on 8/2/20.
//  Copyright © 2020 PAPUNIDIS DEVELOPMENT. All rights reserved.
//

import UIKit

class GamesTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

//MARK: CONNECTIONS
    @IBOutlet weak var gamesPhoto: UIImageView!
    @IBAction func gamesButton(_ sender: UIButton) {
    }
    
}
