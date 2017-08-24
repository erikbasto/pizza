//
//  PizzaSizeController.swift
//  Pizza
//
//  Created by Erik Basto Segovia on 22/08/17.
//  Copyright © 2017 Erik Basto Segovia. All rights reserved.
//

import WatchKit
import Foundation


class PizzaSizeController: WKInterfaceController {
    
    var pizza: Pizza = Pizza()
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func smallClick() {
        sendPizzaSize(size: "Chica")
    }
    @IBAction func mediumClick() {
        sendPizzaSize(size: "Mediana")
    }
    
    @IBAction func grandeClick() {
       sendPizzaSize(size: "Grande")
    }
    
    func sendPizzaSize(size: String)
    {
        pizza.size = size
        pushController(withName: "doughStep", context: pizza)
    }
   
    
}
