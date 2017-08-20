//
//  PizzaConfirmViewController.swift
//  Pizza
//
//  Created by Erik Basto Segovia on 19/08/17.
//  Copyright © 2017 Erik Basto Segovia. All rights reserved.
//

import UIKit

class PizzaConfirmViewController: UIViewController
{
    var pizza: Pizza = Pizza()
    
    @IBOutlet weak var PizzaSize: UILabel!
    @IBOutlet weak var PIzzaIngredients: UILabel!
    @IBOutlet weak var PizzaCheese: UILabel!
    @IBOutlet weak var PizzaDough: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool){
        PizzaSize.text = pizza.size
        PizzaDough.text = pizza.dough
        PizzaCheese.text = pizza.cheese
        var ingredientsList: String = ""
        for ingredient in pizza.ingredientsList{
            ingredientsList = ingredientsList +
             ingredient + "\r\n"
        }
        
        PIzzaIngredients.text = ingredientsList
        
    }
    
    @IBAction func SendToKitchen(_ sender: Any) {
        let alert = UIAlertController(title: "Pizza finalizada", message: "La pizza se encuentra en preparación", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert,animated: true, completion: nil)
    }
    
}
