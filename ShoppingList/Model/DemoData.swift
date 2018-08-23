//
//  demoData.swift
//  ShoppingList
//
//  Created by Nathan Wainwright on 2018-08-22.
//  Copyright © 2018 Jamie. All rights reserved.
//

import UIKit

class DemoData: NSObject {
  var firstTask = ListItem(title: "Apples", andAmount: 5)
  var secondTask = ListItem(title: "Oranges", andAmount: 1)
  var thirdTask = ListItem(title: "Milk 2% 4L", andAmount: 1)
  var fourthTask = ListItem(title: "Can of Black Paint", andAmount: 15)
  var fifthTask = ListItem(title: "Shiny New Car", andAmount: 1)
  var demoData: [ListItem]
  
  override init() {
    demoData = [firstTask, secondTask, thirdTask, fourthTask, fifthTask]
    super.init()
  }
  
  func addListItem(titleString: String, newNumber: Int) {
    demoData.append(ListItem(title: titleString, andAmount: Int32(newNumber)))
  }
  
  func removeListItem(itemNumber: Int) {
    demoData.remove(at: itemNumber)
  }
  
  func markListItem(indexnumber: Int) {
    demoData[indexnumber].status = !demoData[indexnumber].status
  }
  
  func sortEntireList() {
    var tempArray = [ListItem]()
    for item in demoData {
      if (item.status == true) {
        tempArray.append(item)
      } else {
        tempArray.insert(item, at: 0)
      }
    }
    demoData = tempArray
  }
  
////  PUT AT TOP OF VIEW CONTROLLER FILE TO RUN TESTS
//  let actualData = DemoData() //NATHAN ADDED, REMOVE IF ALREADY IN VIEW CONTROLLER
////    PUT AT TOP OF VIEW CONTROLLER FILE TO RUN TESTS

  
//  //  DELETE ONCE TESTED -- DROP INTO VIEW CONTROLLER FOR TESTING -- WORKING METHODS FOR VIEW CONTROLLER TO CALL
//  actualData.addListItem(titleString: "HELLO", newNumber: 45)
//  actualData.addListItem(titleString: "This one", newNumber: 4)
//  actualData.addListItem(titleString: "Cars", newNumber: 5)
//  actualData.addListItem(titleString: "Trester", newNumber: 75)
//  for item in actualData.demoData {
//  print("TITLE: \(item.title) | " + "AMOUNT: \(item.amount) | " + "PRIORITY: \(item.priority) | " + "STATUS: \(item.status)")
//  }
//  print("----------")
//  actualData.removeListItem(itemNumber: 2)
//  
//  for item in actualData.demoData {
//  print("TITLE: \(item.title) | " + "AMOUNT: \(item.amount) | " + "PRIORITY: \(item.priority) | " + "STATUS: \(item.status)")
//  }
//  print("----------")
//  actualData.markListItem(indexnumber: 1)
//  actualData.markListItem(indexnumber: 3)
//  actualData.markListItem(indexnumber: 5)
//  for item in actualData.demoData {
//  print("TITLE: \(item.title) | " + "AMOUNT: \(item.amount) | " + "PRIORITY: \(item.priority) | " + "STATUS: \(item.status)")
//  
//  }
//  // FIRST SORT
//  print("----------")
//  actualData.sortEntireList()
//  for item in actualData.demoData {
//  print("TITLE: \(item.title) | " + "AMOUNT: \(item.amount) | " + "PRIORITY: \(item.priority) | " + "STATUS: \(item.status)")
//  }
//  //   STOP DELETEING HERE -- DROP INTO VIEW CONTROLLER FOR TESTING -- WORKING METHODS FOR VIEW CONTROLLER TO CALL
  
  
  
  
  
  
  
  
  
  
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
