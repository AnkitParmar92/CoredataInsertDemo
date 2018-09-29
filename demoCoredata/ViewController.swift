//
//  ViewController.swift
//  demoCoredata
//
//  Created by apple on 22/09/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtName: UITextField!
    @IBOutlet var txtAddress: UITextField!
    @IBOutlet var txtCity: UITextField!
    @IBOutlet var txtMobile: UITextField!
    @IBOutlet var btnSave: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnSaveClicked(_ sender: Any) {
        
        var dict = ["name":txtName.text,"address":txtAddress.text,"city":txtCity.text,"mobile":txtMobile.text]
        DatabaseHelper.sharednstance.save(object: dict as! [String : String])
        
        
    }
    


}

