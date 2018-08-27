//
//  AddObjectViewController+TextFieldLimit.swift
//  ShoppingList
//
//  Created by Nathan Wainwright on 2018-08-26.
//  Copyright © 2018 Jamie. All rights reserved.
//
//WHERE I GOT INFORMATION TO ENABLE THIS METHOD -- nathan
//URL:: https://mobikul.com/useful-uitextfield-extensions/

import UIKit

private var KeyMaxLength: Int = 0

//while this does limit strings, which are the usual input for a list
// any just 'string' of straight numbers will get past the limite....
// which ends up with a broken string on the screen.

// and with how our 'mark off' function works; it doesn't take into account multiple lines.

// so this is the best work around at this time.

extension UITextField {
  
  @IBInspectable var maxLength: Int {
    get {
      if let length = objc_getAssociatedObject(self, &KeyMaxLength) as? Int {
        return length
      } else {
        return Int.max
      }
    }
    set {
      objc_setAssociatedObject(self, &KeyMaxLength, newValue, .OBJC_ASSOCIATION_RETAIN)
      addTarget(self, action: #selector(checkMaxLength), for: .editingChanged)
    }
  }
  
  @objc func checkMaxLength(textField: UITextField) {
    guard let prospectiveText = self.text,
      prospectiveText.count > maxLength
      else {
        return
    }
    
    let selection = selectedTextRange
    let maxCharIndex = prospectiveText.index(prospectiveText.startIndex, offsetBy: maxLength)
    text = prospectiveText.substring(to: maxCharIndex)
    selectedTextRange = selection
  }
}





// below code has a nice trick of adding an outlet property into storyboard; easier to change value from storyboard
//// 1
//class MaxLengthTextField: UITextField, UITextFieldDelegate {
//  // 2
//  private var characterLimit: Int?
//  // 3
//  required init?(coder aDecoder: NSCoder) {
//    super.init(coder: aDecoder)
//    delegate = self
//  }
//  // 4
//  @IBInspectable var maxLength: Int {
//    get {
//      guard let length = characterLimit else {
//        return Int.max
//      }
//      return length
//    }
//    set {
//      characterLimit = newValue
//    }
//  }
//
//  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//
//    // 2
//    guard string.characters.count > 0 else {
//      return true
//    }
//
//    // 3
//    let currentText = textField.text ?? ""
//    // 4
//    let prospectiveText = (currentText as NSString).replacingCharacters(in: range, with: string)
//    // 5
//    return prospectiveText.characters.count <= maxLength
//  }

// END -- MaxLengthTextField
