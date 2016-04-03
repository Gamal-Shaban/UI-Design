//
//  NavigationTableViewCell.swift
//  Ui Design New
//
//  Created by Gamal Shaban on 3/31/16.
//  Copyright © 2016 Gamal Shaban. All rights reserved.
//

import UIKit

class NavigationTableViewCell: UITableViewCell {

    @IBOutlet weak var navigationLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
