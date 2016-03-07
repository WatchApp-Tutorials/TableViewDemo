//
//  DummyDataMaker.swift
//  TableViewTutorial
//
//  Created by Yogesh Bharate on 10/12/15.
//  Copyright © 2015 Yogesh Bharate. All rights reserved.
//

import WatchKit

public class DummyDataMaker: NSObject {
  func createDummyUsers() -> [UsersInfo] {
      var users = [UsersInfo]()
    
    for _ in 0...100 {
      let userInfo = UsersInfo()
      userInfo.name = generateNames()
      userInfo.age = generateAge()
      userInfo.gender = generateGender()
      userInfo.favColor = generateFavColor()
      users.append(userInfo)
    }
    
    return users
  }
  
  func generateNames()->String {
    let names = ["Amit Pandit Laskar","Shrimant Anant Nikate","TEJPRATAP SINGH","Suraj Shindalkar","Dhaval Ghetiya","Neeraj S Rajopadhye","Nitish Sharma","PRITI BANODHA","Debanjan Chakroborty","AKHIL BEHL","Gaurav Sharma","Amol Navthale","Prasad Deokar","Vaishali Chopade","Neeraj S Rajopadhye","Nitish Sharma","PRITI BANODHA","Debanjan Chakroborty"]
    let randomIndex = Int(arc4random_uniform(UInt32(names.count)))
    return names[randomIndex]
  }
  
  func generateAge()->Int {
    let ages = [15, 17, 18, 22, 24, 25,27, 29, 28]
    let randomIndex = Int(arc4random_uniform(UInt32(ages.count)))
    
    return ages[randomIndex]
  }
  
  func generateGender()->String {
    let genders = ["male", "female", "others"]
    
    let randmIndex = Int(arc4random_uniform(UInt32(genders.count)))
    
    return genders[randmIndex]
  }
  
  func generateFavColor()->String {
    let colors = ["Blue", "Red", "Black", "Green", "Pink", "White", "Orange", "Purple", "Yellow", "Brown", "Gray", "Vown"]
    
    let randmIndex = Int(arc4random_uniform(UInt32(colors.count)))
    
    return colors[randmIndex]
  }
  
}
