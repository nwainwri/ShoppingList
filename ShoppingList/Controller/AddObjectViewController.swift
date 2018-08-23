//
//  AddObjectViewController.swift
//  ShoppingList
//
//  Created by Jamie on 2018-08-22.
//  Copyright © 2018 Jamie. All rights reserved.
//

import UIKit




// put this in delgator, this screen passes data to main screen
protocol AddObjectViewControllerDelgate: AnyObject
{
  func itemAdded(sentItem: ListItem)
}

class AddObjectViewController: UIViewController, UITextFieldDelegate
{
  // OUTLETS HERE / AND OR PROPERTIES
  
  weak var delegate:AddObjectViewControllerDelgate?
  
  // Swift
  
  @IBOutlet weak var amountOfItemsField: UITextField!
  
  @IBOutlet weak var titleOfItemField: UITextField!
  
  var itemToPassBack = ListItem()
  
  /// END
    override func viewDidLoad() {
        super.viewDidLoad()
      
      
//      titleOfItemField.returnKeyType = .done
      
      amountOfItemsField.text = "\(itemToPassBack.amount)"
      titleOfItemField.text = itemToPassBack.title
      


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
//    print("THIS WORKS TO ADD")
    itemToPassBack.amount = itemToPassBack.amount + 1
    amountOfItemsField.text = "\(itemToPassBack.amount)"
  }
  
  @IBAction func subtractButtonPressed(_ sender: Any){
//    print("THIS WORKS TO SUBTRACT")
    itemToPassBack.amount = itemToPassBack.amount - 1
    amountOfItemsField.text = "\(itemToPassBack.amount)"
  }
  
  
  @IBAction func clearTitleTextButtonPressed(_ sender: Any) {
    titleOfItemField.text = ""
//    print("CLEAR BUTTON PRESSED")
  }
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool
  {
    textField.resignFirstResponder()
    
    print("klja;dfkljals;jfakl;j")
    return true
  }

  
  
  
  
  
  
  
  
  
  
  
  
  
}
