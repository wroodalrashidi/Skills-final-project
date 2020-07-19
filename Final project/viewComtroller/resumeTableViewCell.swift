//
//  resumeTableViewCell.swift
//  Final project
//
//  Created by Wrood Alrashidi on 12/07/2020.
//  Copyright © 2020 Wrood Alrashidi. All rights reserved.
//

import UIKit

class resumeTableViewCell: UITableViewCell {

    @IBOutlet weak var workerImage: UIImageView!
    
    @IBOutlet weak var workerName: UILabel!
    @IBOutlet weak var workerRating: UILabel!


    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
