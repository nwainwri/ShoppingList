//
//  demoData.swift
//  ShoppingList
//
//  Created by Nathan Wainwright on 2018-08-22.
//  Copyright © 2018 Jamie. All rights reserved.
//

import UIKit

class DemoData: NSObject {
  
  var firstTask = taskItem(title: "Apples", andAmount: 5)
  var secondTask = taskItem(title: "Oranges", andAmount: 1)
  var thirdTask = taskItem(title: "Milk 2% 4L", andAmount: 1)
  var fourthTask = taskItem(title: "Can of Black Paint", andAmount: 15)
  var fifthTask = taskItem(title: "Shiny New Car", andAmount: 1)
  
  var demoData: [taskItem]
  
  override init() {
    demoData = [firstTask, secondTask, thirdTask, fourthTask, fifthTask]
    super.init()
    
  }
  
  
  
  
//  var demoDataArray:[taskItem] = [firstTask, secondTask, thirdTask, fourthTask, fifthTask]
  
//  var date: Date
//  var now = Date()
//  var dates: [Date]
//  var dates = [Date]()
//  var dates: [Date] = []
  
  
  //= [firstTask, secondTask, thirdTask, fourthTask, fifthTask]
  
  
  
  
  
  //point of this class is to init data for the demo of the app
  
  // properties needed:
  //      array of taskItem objects

}
