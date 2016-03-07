//
//  DetailVC.swift
//  TableViewTutorial
//
//  Created by Yogesh Bharate on 07/12/15.
//  Copyright © 2015 Yogesh Bharate. All rights reserved.
//

import WatchKit
import Foundation


class DetailVC: WKInterfaceController {

  @IBOutlet var userImage: WKInterfaceImage!
  @IBOutlet var detailLabel: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
      if let val = context as? String {
        let finalString = "Welcome " + val
        detailLabel.setText(finalString)
        userImage.setImageNamed(val)
      } else {
        detailLabel.setText("Ooooop !!! Error occured !!!!!!")
      }
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
