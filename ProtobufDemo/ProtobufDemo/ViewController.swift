//
//  ViewController.swift
//  ProtobufDemo
//
//  Created by 盖特 on 2017/12/27.
//  Copyright © 2017年 盖特. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var person = Person()
        person.personID = 1
        person.personName = "Carson"
        person.personGender = "Male"
        person.personMessage = "I'm the best in the world !"
        
        let binaryData = try? person.serializedData()
        
        let decodedInfo = try? Person(serializedData: binaryData!)
        
        print(decodedInfo!)
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

