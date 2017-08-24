//
//  ConfirmController.swift
//  Pizza
//
//  Created by Erik Basto Segovia on 22/08/17.
//  Copyright © 2017 Erik Basto Segovia. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmController: WKInterfaceController {
    var pizza: Pizza = Pizza()
    
    @IBOutlet var SizePizza: WKInterfaceLabel!
    @IBOutlet var DoughPizza: WKInterfaceLabel!
    @IBOutlet var CheesePizza: WKInterfaceLabel!
    @IBOutlet var IngredientsPizza: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        if let val: Pizza = context as? Pizza{
            pizza = val
        }
        SizePizza.setText(pizza.size)
        DoughPizza.setText(pizza.dough)
        CheesePizza.setText(pizza.cheese)
        var list: String = ""
        for ingredient: String in pizza.ingredientsList
        {
            list = list + ingredient + "\r\n"
        }
        IngredientsPizza.setText(list)
        

    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func SentToKitchen() {
        
        let action = WKAlertAction(title: "Ok", style: WKAlertActionStyle.default) {
            print("Ok")
        }
        presentAlert(withTitle: "Pedido enviado",
                     message: "Su pedido ha sido enviado a la cocina.",
                     preferredStyle: WKAlertControllerStyle.alert,
                     actions:[action])
            
    }
}
