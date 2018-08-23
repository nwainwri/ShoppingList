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
  
 
  
  /// END
    override func viewDidLoad() {
        super.viewDidLoad()
      
//      need a pass back item... property.
      
//      var newItemToAdd = ListItem()
      let testThisDemo = DemoData()
      
      testThisDemo.currentItemsArray[0].amount = testThisDemo.currentItemsArray[0].amount + 1
      
//      addToAmountItems.sendActions(for: .touchUpInside) {
//
//      }
      
//      //call this line one enter pressed on pop up keyboard... HOW
//      thisTest.addListItem(titleString: titleOfItemField.text!, newNumber: Int(amountOfItemsField.text!)!) // unsafe method; need to unwrap safely

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

  
  @IBAction func addButtonPressed(_ sender: Any) {
    print("THIS WORKS TO ADD")
    
  }
  
  @IBAction func subtractButtonPressed(_ sender: Any){
    print("THIS WORKS TO SUBTRACT")
  }
  
  
  @IBAction func clearTitleTextButtonPressed(_ sender: Any) {
    
    print("CLEAR BUTTON PRESSED")
    
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
