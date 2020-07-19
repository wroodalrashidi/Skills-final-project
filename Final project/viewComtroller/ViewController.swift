//
//  ViewController.swift
//  Final project
//
//  Created by Wrood Alrashidi on 06/07/2020.
//  Copyright © 2020 Wrood Alrashidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Turtorbutton( sender: UIButton!) {
    performSegue(withIdentifier: "goToList", sender: arrayOftutor)
        
    }
    
    @IBAction func homeFixingButton( sender: UIButton!) {
        performSegue(withIdentifier: "goToList", sender: arrayOfHomeFixing)
    }
    @IBAction func decorButton( sender: UIButton!) {
        performSegue(withIdentifier: "goToList", sender: arrayOfDecor)
    }
    
    @IBAction func foodButton( sender: UIButton!) {
        performSegue(withIdentifier: "goToList", sender: arrayOfCooking)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ListTableVC
        let catogry = sender
//            as! [catogries]
        vc.selected2 = catogry as! [catogries]
    }
}


