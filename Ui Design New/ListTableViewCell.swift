//
//  ListTableViewCell.swift
//  Ui Design New
//
//  Created by Gamal Shaban on 3/30/16.
//  Copyright © 2016 Gamal Shaban. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {

    @IBOutlet weak var imagelistCell: UIImageView!
    @IBOutlet weak var nameList: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
