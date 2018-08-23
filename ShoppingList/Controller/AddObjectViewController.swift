//
//  AddObjectViewController.swift
//  ShoppingList
//
//  Created by Jamie on 2018-08-22.
//  Copyright © 2018 Jamie. All rights reserved.
//

import UIKit

class AddObjectViewController: UIViewController {
  // OUTLETS HERE / AND OR PROPERTIES
  
  @IBOutlet weak var amountOfItemsField: UITextField!
  
  @IBOutlet weak var titleOfItemField: UITextField!
  
  @IBOutlet weak var addToAmountItems: UIButton!
  
  @IBOutlet weak var subtractFromAmountItems: UIButton!
  
  
  /// END
    override func viewDidLoad() {
        super.viewDidLoad()
      
//      need a pass back item... property.
      
      let thisTest = DemoData()
      
      // need function for reducing amount of items
      
      // need function for adding to amount of items
      
      
      
      
      
      //call this line one enter pressed on pop up keyboard... HOW
      thisTest.addListItem(titleString: titleOfItemField.text!, newNumber: Int(amountOfItemsField.text!)!) // unsafe method; need to unwrap safely
      
    

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  
  
  
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
