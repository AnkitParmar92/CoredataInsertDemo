//
//  DatabaseHelper.swift
//  demoCoredata
//
//  Created by apple on 22/09/18.
//  Copyright © 2018 apple. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class DatabaseHelper {
    
    static var sharednstance = DatabaseHelper()
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    
    func save(object: [String:String])
    {
        let student = NSEntityDescription.insertNewObject(forEntityName: "Student", into: context!) as! Student
        
        student.name = object["name"]
        student.address = object["address"]
        student.city = object["city"]
        student.mobile = object["mobile"]
        
        do {
            try context?.save()
        } catch {
            print("data is not saved")
        }
        
        
        
    }
}
