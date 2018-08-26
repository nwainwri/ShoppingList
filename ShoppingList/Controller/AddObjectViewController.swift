//
//  AddObjectViewController.swift
//  ShoppingList
//
//  Created by Jamie on 2018-08-22.
//  Copyright © 2018 Jamie. All rights reserved.
//

import UIKit

class AddObjectViewController:
    UIViewController,
    UITextFieldDelegate,
    UIPickerViewDataSource,
    UIPickerViewDelegate
{
    
    
    // OUTLETS HERE / AND OR PROPERTIES
    
    @IBOutlet weak var ListUIPickerView: UIPickerView!
    
    weak var delegate: AddObjectViewControllerDelgate?
    var listArray: [String] = ["Menu", "Save this list", "Add a new list", "My saved lists"]
    var listPickerRow = Int ()
    
    @IBOutlet var tapGestureRecognizer: UITapGestureRecognizer!
    
    
    //  var itemToPassBack = ListItem()
    
    @IBOutlet weak var amountOfItemsLabel: UILabel!
    @IBOutlet weak var titleOfItemField: UITextField!
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var subButton: UIButton!
    
    @IBOutlet weak var addListItemButton: UIButton!
    
    @IBOutlet weak var addListItemViewBar: UIView!
    
    var amount: Int = 1
    
    /// END - OUTLETS HERE / AND OR PROPERTIES
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // tapGestureRecognizer.addTarget(self, action: #selector(bottomsUp))
        self.ListUIPickerView.delegate = self
        self.ListUIPickerView.dataSource = self
        changeButtonState(number: 0) // set buttons to disabled
        
        addListItemViewBar.layer.cornerRadius = 7.5 // changes cornder radius for box holding addItem Elements
        
        amountOfItemsLabel.text = "\(amount)"
        titleOfItemField.placeholder = "Enter an item"
    }
    
    @objc func bottomsUp (){
        // delegate?.tappedAdditem()
        //        print("yup it works")
    }
    /*
     // MARK: - Navigation
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    //FUNCTION FOR +/- BUTTONS ON UI
    @IBAction func addSubAction(_ sender: Any)
    {
        // ADD GUARD STATEMENT
        // IF TEXTFIELD.TXT EMPTY; RETURN
        guard let text = titleOfItemField.text, !text.isEmpty else {
            return
        }
        
        
        if ( (sender as! UIButton) == addButton)
        {
            amount += 1
        }
        else
        {
            if ( amount > 1)
            {
                amount -= 1
            }
        }
        amountOfItemsLabel.text = "\(amount)"
    }
    //end -- FUNCTION FOR +/- BUTTONS ON UI
    
    
    //  // ORIGINAL CLEAR BUTTON ACTION/FUNC
    //  @IBAction func clearTitleTextButtonPressed(_ sender: Any)
    //  {
    //    titleOfItemField.text = ""
    //    amountOfItemsLabel.text = "0"
    //    amount = 0
    //    //    print("CLEAR BUTTON PRESSED")
    //  }
    //  // end -- ORIGINAL CLEAR BUTTON ACTION/FUNC
    
    ////  keep if we add stepper to UI
    //  @IBAction func stepperChanged(_ sender: Any)
    //  {
    //    amount = Int((sender as! UIStepper).value)
    //  }
    
    
    //  START BLOCK -- CHARACTER LIMIT
    let ACCEPTABLE_CHARACTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_ "
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let cs = NSCharacterSet(charactersIn: ACCEPTABLE_CHARACTERS).inverted
        let filtered = string.components(separatedBy: cs).joined(separator: "")
        
        return (string == filtered)
    }
    //  END BLOCK -- CHARACTER LIMIT
    
    //WHEN TEXTFIELD SELECTED; THEN ENABLE BUTTONS
    @IBAction func userHasEnteredText(_ sender: UITextField) {
        changeButtonState(number: 1) // set buttons to enabled
    }
    
    
    
    
    
    
    
    // START -- HAVE CLEAR BUTTON ON TEXTFIELD, RESET AMOUNT LABEL
    // https://stackoverflow.com/questions/11337961/when-clicking-on-uitextfields-clear-button-keyboard-is-disappearing-not-text
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        changeButtonState(number: 0) // set buttons to disabled
        amountOfItemsLabel.text = "1"
        titleOfItemField.text = ""
        amount = 1
        //textField.resignFirstResponder()
        return false
    }
    // END -- have clear
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        //    //    let tempAmount = Int(amountOfItemsField.text!)
        
        guard let text = titleOfItemField.text, !text.isEmpty else {
            
            return false
        }
        
        
        //END GUARD STATEMENT -- does rest if it's not empty
        
        let itemToPassBack = ListItem()
        
        changeButtonState(number: 0) // set buttons to disabled
        
        
        itemToPassBack.title = titleOfItemField.text!
        itemToPassBack.amount = Int32(amount)
        
        self.delegate?.itemAdded(sentItem: itemToPassBack)
        
        //  CLEARS TEXTFIELD/AMOUNTLABEL WHEN ITEM SENT
        titleOfItemField.text = ""
        amountOfItemsLabel.text = "1"
        amount = 1
        //  END CLEAR
        
        return true
    }
    
    @IBAction func AddItemUIButton(_ sender: UIButton) {
        
        //    let tempAmount = Int(amountOfItemsField.text!)
        
        //GUARD STATEMENT TO PREVENT BLANK ENTRIES
        // if text from textfield IS empty; return false
        // if not, grab information, put into 'itemToPassBack', then return true.
        guard let text = titleOfItemField.text, !text.isEmpty else {
            return
        }
        //END GUARD STATEMENT -- does rest if it's not empty
        
        let itemToPassBack = ListItem()
        
        itemToPassBack.title = titleOfItemField.text!
        itemToPassBack.amount = Int32(amount)
        
        self.delegate?.itemAdded(sentItem: itemToPassBack)
        
        //  CLEARS TEXTFIELD/AMOUNTLABEL WHEN ITEM SENT
        titleOfItemField.text = ""
        amountOfItemsLabel.text = "1"
        amount = 1
        //  END CLEAR
        
        changeButtonState(number: 0) // set buttons to disabled
    }
    
    //  MARK: - Picker View with Alerts
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    } //columns needed
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return listArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.listArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let choice = self.listArray[row]
        switch choice{
        case "Menu":
            print("Menu")
        case "Save this list":
            alertForMenuChoice(choice: choice)
        case "Add a new list":
            alertForMenuChoice(choice: choice)
        default: print("load list")
        }
    }
    
    func alertForMenuChoice (choice:String){
        var alert = UIAlertController()
        if choice == "Save this list" {
            alert = UIAlertController(title: "\(choice)", message: "What would you like to save your list as?", preferredStyle: .alert)
            alert.addTextField { (textField) in
                textField.text = ""
                alert.addAction(UIAlertAction(title: NSLocalizedString("Save", comment: "Default action"), style: .default))
            }
        }
        if choice == "Add a new list" {
            alert = UIAlertController(title: "\(choice)", message: "What would you like to name your new list?", preferredStyle: .alert)
            alert.addTextField { (textField) in
                textField.text = ""
                alert.addAction(UIAlertAction(title: NSLocalizedString("Add", comment: "Default action"), style: .default))
            }
        }else{
            print("Load list")
        }
        self.present(alert, animated: true, completion: nil)
    }
    

    func changeButtonState(number: Int) {
        if number == 1 {
            addButton.isEnabled = true
            addButton.alpha = 1
            
            subButton.isEnabled = true
            subButton.alpha = 1
            
            addListItemButton.isEnabled = true
            addListItemButton.alpha = 1
        } else {
            addButton.isEnabled = false
            addButton.alpha = 0.5
            
            subButton.isEnabled = false
            subButton.alpha = 0.5
            
            addListItemButton.isEnabled = false
            addListItemButton.alpha = 0.5
        }
    }
    
}
