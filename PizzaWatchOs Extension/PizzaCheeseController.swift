//
//  PizzaCheeseController.swift
//  Pizza
//
//  Created by Erik Basto Segovia on 22/08/17.
//  Copyright © 2017 Erik Basto Segovia. All rights reserved.
//

import WatchKit
import Foundation


class PizzaCheeseController: WKInterfaceController {
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

   @IBAction func mozarellaClick() {
        sendCheeseStedp(cheese: "Mozarella")
    }
    
    @IBAction func cheddarClick() {
        sendCheeseStedp(cheese: "Cheddar")
    }
    
    @IBAction func parmesanoClick() {
        sendCheeseStedp(cheese: "Parmesano")
    }
    
    @IBAction func sinquesoClick() {
        sendCheeseStedp(cheese: "Sin Queso")
    }
    
    func sendCheeseStedp(cheese: String)
    {
        pizza.cheese = cheese
        pushController(withName: "ingredientStep", context: pizza)
        
    }
}
