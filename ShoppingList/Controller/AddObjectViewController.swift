//
//  AddObjectViewController.swift
//  ShoppingList
//
//  Created by Jamie on 2018-08-22.
//  Copyright © 2018 Jamie. All rights reserved.
//

import UIKit

class AddObjectViewController: UIViewController, UITextFieldDelegate
{
  // OUTLETS HERE / AND OR PROPERTIES
  weak var delegate: AddObjectViewControllerDelgate?
  
  //  var itemToPassBack = ListItem()
  // Swift
  @IBOutlet weak var amountOfItemsLabel: UILabel!
  @IBOutlet weak var titleOfItemField: UITextField!
  
  @IBOutlet weak var addButton: UIButton!
  @IBOutlet weak var subButton: UIButton!
  
  var amount: Int = 0
  
  /// END
  override func viewDidLoad()
  {
    super.viewDidLoad()
    amountOfItemsLabel.text = "\(amount)"
    titleOfItemField.placeholder = "Enter the item"
  }
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destinationViewController.
   // Pass the selected object to the new view controller.
   }
   */
  
  @IBAction func addSubAction(_ sender: Any)
  {
    if ( (sender as! UIButton) == addButton)
    {
      amount += 1
    }
    else
    {
      if ( amount > 0)
      {
        amount -= 1
      }
    }
    amountOfItemsLabel.text = "\(amount)"
  }
  
  @IBAction func clearTitleTextButtonPressed(_ sender: Any)
  {
    titleOfItemField.text = ""
    amountOfItemsLabel.text = "0"
    amount = 0
    //    print("CLEAR BUTTON PRESSED")
  }
  
  ////  keep if we add stepper to UI
  //  @IBAction func stepperChanged(_ sender: Any)
  //  {
  //    amount = Int((sender as! UIStepper).value)
  //  }
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool
  {
    textField.resignFirstResponder()
    
    //    let tempAmount = Int(amountOfItemsField.text!)
    
    let itemToPassBack = ListItem()
    
    itemToPassBack.title = titleOfItemField.text!
    itemToPassBack.amount = Int32(amount)
    
    self.delegate?.itemAdded(sentItem: itemToPassBack)
    
        print("ENTER PRESSED")
    return true
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
