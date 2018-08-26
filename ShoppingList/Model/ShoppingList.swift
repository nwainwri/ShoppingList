//
//  ShoppingList.swift
//  ShoppingList
//
//  Created by Jamie on 2018-08-26.
//  Copyright © 2018 Jamie. All rights reserved.
//

import UIKit

class ShoppingList: RLMObject {

    
    @objc dynamic var listName: String = ""
    var shoppingList: RLMArray<ListItem> = RLMArray<ListItem>()
    
    convenience init(listName: String)
    {
        self.init()
        self.listName = listName
        self.shoppingList = RLMArray<ListItem>()
    }
}
