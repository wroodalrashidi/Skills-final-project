//
//  AddInfoVC.swift
//  Final project
//
//  Created by Wrood Alrashidi on 15/07/2020.
//  Copyright © 2020 Wrood Alrashidi. All rights reserved.
//

import UIKit
import MessageUI

class AddInfoVC: UIViewController, MFMailComposeViewControllerDelegate {
    
    var image: UIImage = UIImage(named: "english teacher")!
    
    @IBOutlet weak var PickSkillTextField: UITextField!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var infoTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var profilePic: UIImageView!
    
    @IBAction func registerButton(_ sender: Any) {
        let name = nameTextField.text!
        let info = infoTextField.text!
        let email = emailTextField.text!
        let picker = PickSkillTextField.text!
       let alert = UIAlertController(title: "تهانينا🎊", message: "لقد تم اضافة معلوماتك!", preferredStyle: .alert)

       alert.addAction(UIAlertAction(title: "اوكي", style: .default, handler: nil))

       self.present(alert, animated: true)

        
        if picker == "الجبر" {
            listOfAlgebraworker.append(profile(name: name, info: info, email: email, image: image, rating: "⭐️"))
        } else if picker == "اللغة العربية" {
            listOfArabicworker.append(profile(name: name, info: info, email: email, image: image, rating: "⭐️"))
        } else if picker == "الفيزياء" {
            listOfPhysicsWorker.append(profile(name: name, info: info, email: email, image: image, rating: "⭐️"))
        } else if picker == "اللغة النجليزية" {
        listOfEnglishWorker.append(profile(name: name, info: info, email: email, image: image, rating: "⭐️"))
        } else if picker == "الكيف" {
        listOfACWorkers.append(profile(name: name, info: info, email: email, image: image, rating: "⭐️"))
        } else if picker == "تركيب الأثاث" {
        listOfFurnitureWorkers.append(profile(name: name, info: info, email: email, image: image, rating: "⭐️"))
        } else if picker == "عامل يدوي" {
               listOfHandymanWorkers.append(profile(name: name, info: info, email: email, image: image, rating: "⭐️"))
        } else if picker == "تصميم المواقع" {
                      listOfWebsiteWorkers.append(profile(name: name, info: info, email: email, image: image, rating: "⭐️"))
        } else if picker == "تصميم الداخلي" {
                      listOfInteriorWorkers.append(profile(name: name, info: info, email: email, image: image, rating: "⭐️"))
        } else if picker == "تصميم التطبيقات" {
                      listOfAppWorkers.append(profile(name: name, info: info, email: email, image: image, rating: "⭐️"))
        } else if picker == "طباخ شخص" {
                      listOfPersonalWorkers.append(profile(name: name, info: info, email: email, image: image, rating: "⭐️"))
        }  else if picker == "طباخ" {
                      listOfChefWorkers.append(profile(name: name, info: info, email: email, image: image, rating: "⭐️"))
        }
    }

let skills = [
"الجبر",
    "اللغة العربية",
    "الفيزياء",
    "اللغة النجليزية",
    "التكيف",
    "تركيب الأثاث",
   "عامل يدوي",
   "تصميم المواقع",
   "تصميم داخلي",
   "تصميم التطبيقات",
   "طباخ شخصي",
   "طباخ"
]

  
    var selectedSkill: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createSkillPicker()
       // createToolBar()

    }
    
    
    @IBAction func insertphoto(_ sender: Any) {
    let vc = UIImagePickerController()
    vc.sourceType = .photoLibrary
    vc.delegate = self
    vc.allowsEditing = true
    present(vc, animated: true)
    }
    
    func createSkillPicker() {
        let skillPicker = UIPickerView()
        skillPicker.delegate = self
        
        PickSkillTextField.inputView = skillPicker
        
        skillPicker.backgroundColor = .white
    }
//    func createToolBar() {
//
//        let toolBar = UIToolbar()
//        toolBar.sizeToFit()
//
//        toolBar.barTintColor = .lightGray
//        toolBar.tintColor = .white
//
//        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(getter: AddInfoVC.disablesAutomaticKeyboardDismissal))
//
//            toolBar.setItems([doneButton], animated: false)
//            toolBar.isUserInteractionEnabled = true
//
//            PickSkillTextField.inputAccessoryView = toolBar
//
//    }
    
    func disablesAutomaticKeyboardDismissal() {
        view.endEditing(true)
    }
}


extension AddInfoVC: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return skills.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return skills[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedSkill = skills[row]
        PickSkillTextField.text = selectedSkill
        PickSkillTextField.resignFirstResponder()
    }

    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        var lable: UILabel
        
        if let view = view as? UILabel {
            lable = view
        } else {
            lable = UILabel()
        }
    
        lable.textColor = .black
        lable.textAlignment = .center
        lable.font = UIFont(name: "System-Regular", size: 25)
        
        lable.text = skills[row]
    
        return lable
    }

}

extension AddInfoVC: UIImagePickerControllerDelegate , UINavigationControllerDelegate
    {
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image1 = info[UIImagePickerController.InfoKey(rawValue:"UIImagePickerControllerEditedImage")] as? UIImage{
                profilePic.image = image1
                image = image1
            }
            picker.dismiss(animated: true, completion: nil)
            

        }
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            picker.dismiss(animated: true, completion: nil)
        }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}


