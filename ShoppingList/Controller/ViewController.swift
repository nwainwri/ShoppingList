//
//  ViewController.swift
//  ShoppingList
//
//  Created by Jamie on 2018-08-22.
//  Copyright © 2018 Jamie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let actualData = DemoData()

    override func viewDidLoad() {
        super.viewDidLoad()
      // Do any additional setup after loading the view, typically from a nib.
      
      
      //  DELETE ONCE TESTED -- DROP INTO VIEW CONTROLLER FOR TESTING
      actualData.addListItem(titleString: "HELLO", newNumber: 45)
      actualData.addListItem(titleString: "This one", newNumber: 4)
      actualData.addListItem(titleString: "Cars", newNumber: 5)
      actualData.addListItem(titleString: "Trester", newNumber: 75)
      for item in actualData.demoData {
        print(item.title)
      }
      print("----------")
      actualData.removeListItem(itemNumber: 2)
      
      for item in actualData.demoData {
        print(item.title)
      }
      print("----------")
      //   STOP DELETEING HERE -- DROP INTO VIEW CONTROLLER FOR TESTING
      
      

      
      
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

