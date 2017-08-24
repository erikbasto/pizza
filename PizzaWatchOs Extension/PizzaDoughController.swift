//
//  PizzaDoughController.swift
//  Pizza
//
//  Created by Erik Basto Segovia on 22/08/17.
//  Copyright © 2017 Erik Basto Segovia. All rights reserved.
//


import WatchKit
import Foundation

class PizzaDoughController: WKInterfaceController {
    var pizza: Pizza = Pizza()
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        if let val: Pizza = context as? Pizza{
            pizza = val
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
    
    @IBAction func delgadaClick() {
        sendPizzaDough(dough: "Delgada")
    }
    @IBAction func crujienteClick() {
        sendPizzaDough(dough: "Crujiente")
    }
    
    @IBAction func gruesaClick() {
        sendPizzaDough(dough: "Gruesa")
    }
    
    func sendPizzaDough(dough: String)
    {
        pizza.dough = dough
        pushController(withName: "cheeseStep", context: pizza)
    }

}
