//
//  TableViewCell.swift
//  CinemaTest
//
//  Created by Md. Mehedi Hasan on 6/5/21.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var imageview: UIImageView!
    
    @IBOutlet weak var Title: UILabel!
    @IBOutlet weak var Overview: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

