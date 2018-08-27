//
//  ViewController+FirstLaunch.swift
//  ShoppingList
//
//  Created by Nathan Wainwright on 2018-08-26.
//  Copyright © 2018 Jamie. All rights reserved.
//
//WHERE I GOT THE INFORMATION TO ENABLE THIS METHOD -- nathan 
//URL:: https://medium.com/anysuggestion/detecting-the-first-launch-of-the-ios-application-the-wrong-and-the-right-way-78b0605bd8b2



import Foundation

final class FirstLaunch {
  
  let userDefaults: UserDefaults = .standard
  
  let wasLaunchedBefore: Bool
  var isFirstLaunch: Bool {
    return !wasLaunchedBefore
  }
  
  init() {
    let key = "com.any-suggestion.FirstLaunch.WasLaunchedBefore"
    let wasLaunchedBefore = userDefaults.bool(forKey: key)
    self.wasLaunchedBefore = wasLaunchedBefore
    if !wasLaunchedBefore {
      userDefaults.set(true, forKey: key)
    }
  }
  
} // END -- FirstLaunch
