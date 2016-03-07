//
//  InterfaceController.swift
//  TableViewTutorial WatchKit Extension
//
//  Created by Yogesh Bharate on 07/12/15.
//  Copyright © 2015 Yogesh Bharate. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

  
  let users = ["Mohit", "Ganesh", "Viraj"]
  let ages = [19, 21, 45]
  var userInfoList = [UsersInfo]()

  // IBoutlets
  @IBOutlet var tableView: WKInterfaceTable!
  
  
  
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
      
      populateData()
    }
  
    private func populateData() {
      
      setupDummyData()
      
      tableView.setNumberOfRows(userInfoList.count, withRowType: "UserDataTableRow")
      
      for (index, _) in userInfoList.enumerate() {
        let row = tableView.rowControllerAtIndex(index) as! UserTableViewData
//        configureCell(row, ForUser: userInfoList)
//        row.label.setText(value)
//        row.image.setImageNamed(value)
//        
//        for (_, values) in ages.enumerate() {
//          row.age.setText("\(values)")
//          
//        }
        row.label.setText(userInfoList[index].name)
      }
    }
  
//  func configureCell(row: UserTableViewData, ForUser users:UsersInfo ) {
//    
//  }
  
  func setupDummyData() {
    let dummy = DummyDataMaker()
    if userInfoList.count == 0 {
      userInfoList = dummy.createDummyUsers()
      print(userInfoList)
    }
  }
  
  override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
    print(userInfoList[rowIndex])
    self.pushControllerWithName("DetailVC", context: userInfoList[rowIndex])
  }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
