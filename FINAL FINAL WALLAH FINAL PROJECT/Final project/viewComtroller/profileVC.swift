//
//  profileVCViewController.swift
//  Final project
//
//  Created by Wrood Alrashidi on 08/07/2020.
//  Copyright © 2020 Wrood Alrashidi. All rights reserved.
//

import UIKit
import MessageUI


class profileDetailsVC: UIViewController, MFMailComposeViewControllerDelegate  {
    
    var selected4 : profile!

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var info: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var profilePicture: UIImageView!
    
        
        override func viewDidLoad() {
        super.viewDidLoad()
            name.text = selected4.name
            info.text = selected4.info
            email.text = selected4.email
            profilePicture.image = selected4.image
            profilePicture.layer.cornerRadius = 50
           // emailOutlet.layer.cornerRadius = 15
}
    

    
    
  
    
    
    
    
}
