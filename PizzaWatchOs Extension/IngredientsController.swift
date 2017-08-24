//
//  IngredientsController.swift
//  Pizza
//
//  Created by Erik Basto Segovia on 22/08/17.
//  Copyright © 2017 Erik Basto Segovia. All rights reserved.
//

import WatchKit
import Foundation


class IngredientsController: WKInterfaceController {
    var pizza: Pizza = Pizza()
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        if let val: Pizza = context as? Pizza{
            pizza = val
        }
        pizza.ingredientsList = []
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func AddToIngredientList(ingredient: String)
    {
        pizza.ingredientsList.append(ingredient)
    }
    
    func RemoveFromIngredientList(ingredient: String)
    {
        if let index = pizza.ingredientsList.index(of: ingredient)
        {
            pizza.ingredientsList.remove(at: index)
        }
    }
    
    @IBAction func jamonSelected(_ value: Bool) {
        if(value)
        {
            AddToIngredientList(ingredient: "Jamon")
        }
        else
        {
            RemoveFromIngredientList(ingredient: "Jamon")
        }
    }
    
    @IBAction func PepperoniSelected(_ value: Bool) {
        if(value)
        {
            AddToIngredientList(ingredient: "Pepperoni")
        }
        else
        {
            RemoveFromIngredientList(ingredient: "Pepperoni")
        }
    }
    
    @IBAction func pavoSelected(_ value: Bool) {
        if(value)
        {
            AddToIngredientList(ingredient: "Pavo")
        }
        else
        {
            RemoveFromIngredientList(ingredient: "Pavo")
        }
    }
    
    @IBAction func salchichaSelected(_ value: Bool) {
        if(value)
        {
            AddToIngredientList(ingredient: "Salchicha")
        }
        else
        {
            RemoveFromIngredientList(ingredient: "Salchicha")
        }
    }
    
    @IBAction func aceitunaSelected(_ value: Bool) {
        if(value)
        {
            AddToIngredientList(ingredient: "Aceituna")
        }
        else
        {
            RemoveFromIngredientList(ingredient: "Aceituna")
        }
    }

    @IBAction func cebollaSelected(_ value: Bool) {
        if(value)
        {
            AddToIngredientList(ingredient: "Cebolla")
        }
        else
        {
            RemoveFromIngredientList(ingredient: "Cebolla")
        }
    }
    
    @IBAction func pimientoSelected(_ value: Bool) {
        if(value)
        {
            AddToIngredientList(ingredient: "Pimiento")
        }
        else
        {
            RemoveFromIngredientList(ingredient: "Pimiento")
        }
    }
    
    @IBAction func pinaSelected(_ value: Bool) {
        if(value)
        {
            AddToIngredientList(ingredient: "Piña")
        }
        else
        {
            RemoveFromIngredientList(ingredient: "Piña")
        }
    }
    
    @IBAction func anchoaSelected(_ value: Bool) {
        if(value)
        {
            AddToIngredientList(ingredient: "Anchoa")
        }
        else
        {
            RemoveFromIngredientList(ingredient: "Anchoa")
        }
    }
    
    
    @IBAction func nextStep() {
        if(pizza.ingredientsList.count == 0)
        {
        let action = WKAlertAction(title: "Ok", style: WKAlertActionStyle.default) {
            print("Ok")
        }
        presentAlert(withTitle: "Aviso",
                     message: "No ha seleccionado ningun ingrediente.",
                     preferredStyle: WKAlertControllerStyle.alert,
                     actions:[action])
        }
        else
        {
            if(pizza.ingredientsList.count > 5)
            {
                let action = WKAlertAction(title: "Ok", style: WKAlertActionStyle.default) {
                    print("Ok")
                }
                presentAlert(withTitle: "Aviso",
                             message: "Solo deberá seleccionar 5 ingredientes.",
                             preferredStyle: WKAlertControllerStyle.alert,
                             actions:[action])
            }
            else
            {
                pushController(withName: "confirmStep", context: pizza)
            }
        }
    }
}
