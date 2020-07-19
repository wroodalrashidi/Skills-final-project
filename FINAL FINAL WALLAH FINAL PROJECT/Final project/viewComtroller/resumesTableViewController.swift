//
//  resumesTableViewController.swift
//  Final project
//
//  Created by Wrood Alrashidi on 12/07/2020.
//  Copyright © 2020 Wrood Alrashidi. All rights reserved.
//

import UIKit

class resumesTableViewController: UITableViewController {
    var selected3: [profile]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        selected3.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listOfWorkersCell", for: indexPath) as! resumeTableViewCell
        cell.workerImage.image = selected3[indexPath.row].image
        cell.workerName.text = selected3[indexPath.row].name
        cell.workerRating.text = selected3[indexPath.row].rating
        cell.workerImage.layer.cornerRadius = 75 
        return cell
        
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
          return 200
          
      }
    
    
        


    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         performSegue(withIdentifier: "goToResume", sender: indexPath.row)
    
//       let indexPath = tableView.indexPathForSelectedRow
//
//        profileDetailsVC. = profileDetailsVC[indexPath?.row]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let index = sender as! Int
            let profile1 = selected3[index]
           let vc = segue.destination as! profileDetailsVC
//        vc.name?.text = profile1.name
//        vc.email?.text! = profile1.email
//        vc.info?.text! = profile1.info
//        vc.profilePicture?.image = profile1.image
//
        vc.selected4 = selected3[index]
    }

}
