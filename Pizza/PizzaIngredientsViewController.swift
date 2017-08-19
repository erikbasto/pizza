//
//  PizzaIngredientsViewController.swift
//  Pizza
//
//  Created by Erik Basto Segovia on 19/08/17.
//  Copyright © 2017 Erik Basto Segovia. All rights reserved.
//

import UIKit

class PizzaIngredientsViewController: UIViewController
{
    var pizza: Pizza = Pizza()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        pizza.ingredientsList.append("Peperoni")
        pizza.ingredientsList.append("Salami")
        
        let nextView = segue.destination as! PizzaConfirmViewController
        nextView.pizza = pizza
        
    }
    
}
