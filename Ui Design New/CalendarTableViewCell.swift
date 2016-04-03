//
//  CalendarTableViewCell.swift
//  Ui Design New
//
//  Created by Gamal Shaban on 3/29/16.
//  Copyright © 2016 Gamal Shaban. All rights reserved.
//

import UIKit

class CalendarTableViewCell: UITableViewCell {


   
   
    @IBOutlet weak var imageCalendar: UIImageView!
   
    @IBOutlet weak var titlecalendar: UILabel!
    @IBOutlet weak var dateCalendar: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
