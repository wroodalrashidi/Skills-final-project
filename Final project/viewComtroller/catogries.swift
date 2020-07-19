//
//  catogries.swift
//  Final project
//
//  Created by Wrood Alrashidi on 11/07/2020.
//  Copyright © 2020 Wrood Alrashidi. All rights reserved.
//

import Foundation
import UIKit



struct catogries {
    let listname: String
    let listimage : UIImage
    let listworkers: [profile]
    
    
}

struct profile {
    let name: String
    let info: String
    let email: String
    let image: UIImage
    let rating: String
    
}

var listworks: [profile] = [profile(name: "احمد خالد", info: "مدرس لمدة ٧ اسنين", email: "ahmed@gmail.com", image: UIImage(named: "arabic teacher")!, rating: "⭐️⭐️⭐️⭐️⭐️")]




var listOfArabicworker =
        [profile(name: "احمد خالد",
                info: "مدرس لمدة ٧ اسسنين",
                email: "ahmed@gmail.com",
                image: UIImage(named:"arabic teacher")!,
                rating: "⭐️⭐️⭐️")]
var listOfAlgebraworker =
       [profile(name: "يوسف محمد",
                       info: "مدرس لمدة ٧ اسسنين",
                       email: "yousef@gmail.com",
                       image: UIImage(named:"algebra teacher")!,
                       rating: "⭐️⭐️⭐️⭐️")]
var listOfEnglishWorker =
        [profile(name: "مريم هاشم",
                       info: "مدرسة لمدة ٧ اسنين",
                       email: "mariam@gmail.com",
                       image: UIImage(named:"english teacher")!,
                       rating: "⭐️⭐️⭐️")]
var listOfPhysicsWorker =
        [profile(name: "نور خالد",
                       info: "مدرسه لمدة ٧ اسسنين",
                       email: "noor@gmail.com",
                       image: UIImage(named:"physics teacher")!,
                       rating: "⭐️⭐️⭐️⭐️⭐️")]
    
    var listOfACWorkers = [
        profile(name: "سلمان احمد",
                       info: "اعمل على الكيف لمدة ٥ اسنين",
                       email: "salam@gmail.com",
                       image: UIImage(named:"AC handyman")!,
                       rating: "⭐️⭐️⭐️")]
var listOfFurnitureWorkers = [
        profile(name: "فهد عيسى",
                       info: "اعمل على تركيب الاثاث لمدة ٧ اسنين",
                       email: "fahed@gmail.com",
                       image: UIImage(named:"furniture handyman")!,
                       rating: "⭐️⭐️⭐️⭐️")]
var listOfHandymanWorkers = [
        profile(name: "محمد عمر",
                       info: "اعمل على كل شي",
                       email: "mohammed@gmail.com",
                       image: UIImage(named:"handyman")!,
                       rating: "⭐️⭐️⭐️")]
    
    var listOfAppWorkers = [
        profile(name: "عزيز حمد",
                       info: "اصمم البرامج لمدة ٧ اسنين",
                       email: "aziz@gmail.com",
                       image: UIImage(named:"app designer")!,
                       rating: "⭐️⭐️⭐️⭐️")]
var listOfWebsiteWorkers = [
        profile(name: "علي احمد",
                       info: "اصمم المواقع",
                       email: "ali@gmail.com",
                       image: UIImage(named:"website designer")!,
                       rating: "⭐️⭐️⭐️")]
var listOfInteriorWorkers = [
        profile(name: "ابراهيم فهد",
                       info: "تصميم داخلي",
                       email: "abrahim@gmail.com",
                       image: UIImage(named:"interior designer")!,
                       rating: "⭐️⭐️⭐️⭐️")]
    
    var listOfPersonalWorkers = [
        profile(name: "غوردن رامسي",
                       info: "طباخ ممتاز",
                       email: "gordan@gmail.com",
                       image: UIImage(named:"personal chef")!,
                       rating: "⭐️⭐️⭐️")]
var listOfChefWorkers = [
        profile(name: "عمر ",
                       info: "طباخ رائعا",
                       email: "omar@gmail.com",
                       image: UIImage(named:"chef")!,
                       rating: "⭐️⭐️⭐️⭐️⭐️")]







var arrayOftutor: [catogries] =
    [catogries(listname: "الجبر", listimage: UIImage(named: "algebra teacher")!, listworkers: listOfAlgebraworker),
    catogries(listname: "اللغة العربية", listimage: UIImage(named: "arabic teacher")!, listworkers: listOfArabicworker),
    catogries(listname: "الفزياء", listimage: UIImage(named: "physics teacher")!, listworkers: listOfPhysicsWorker),
    catogries(listname: "اللغة النجليزية", listimage: UIImage(named: "english teacher")!, listworkers: listOfEnglishWorker)]


var selected : [catogries] = [catogries(listname: "", listimage: UIImage(named: "english teacher")!, listworkers: listworks)]

var arrayOfHomeFixing: [catogries] =
[catogries(listname: "التكيف", listimage: UIImage(named: "AC handyman")!, listworkers: listOfACWorkers),
catogries(listname: "تركيب الأثاث", listimage: UIImage(named: "furniture handyman")!, listworkers: listOfFurnitureWorkers),
catogries(listname: "عامل يدوي", listimage: UIImage(named: "handyman")!, listworkers: listOfHandymanWorkers)]

var arrayOfDecor: [catogries] =
    [catogries(listname: "تصميم المواق ", listimage: UIImage(named: "website designer")!, listworkers: listOfWebsiteWorkers),
catogries(listname: "تصميم داخلي", listimage: UIImage(named: "interior designer")!, listworkers: listOfInteriorWorkers),
catogries(listname: "تصميم التطبيقات", listimage: UIImage(named: "app designer")!, listworkers: listOfAppWorkers)]


var arrayOfCooking: [catogries] =
[catogries(listname: "طباخ شخصي", listimage: UIImage(named: "chef")!, listworkers: listOfChefWorkers ),
catogries(listname: "طباخ", listimage: UIImage(named: "personal chef")!, listworkers:
    listOfPersonalWorkers )]


