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
    
    @IBOutlet weak var ConfirmButton: UIButton!
    @IBOutlet var checkButtons: [CheckBox]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        EnableConfirmButton(checkBoxLabel: "")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        pizza.ingredientsList = []
        for checkbox in checkButtons
        {
            if(checkbox.isChecked)
            {
                pizza.ingredientsList.append((checkbox.titleLabel?.text)!)
            }
        }
        
        let nextView = segue.destination as! PizzaConfirmViewController
        nextView.pizza = pizza
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
         var ingredientListQuantity = 0
        for checkbox in checkButtons
        {
            if(checkbox.isChecked)
            {
                ingredientListQuantity += 1
            }
        }
        if(ingredientListQuantity>5)
        {
            let alert = UIAlertController(title: "Aviso ", message: "La pizza deberá tener 5 ingredientes como máximo. Elija los ingredientes favoritos.", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert,animated: true, completion: nil)
            return false
        }
        return true
    }
    
    @IBAction func CheckedIngredient(_ sender: CheckBox) {
        if(!sender.isChecked)
        {
            ConfirmButton.isEnabled = true
            ConfirmButton.backgroundColor = UIColor.darkText
        }
        else{
            EnableConfirmButton(checkBoxLabel: (sender.titleLabel?.text)!)
                 }
    }
    
    func EnableConfirmButton(checkBoxLabel: String)
    {
        var enabledButton = false
        for checkbox in checkButtons
        {
            if(checkbox.isChecked && checkbox.titleLabel?.text != checkBoxLabel)
            {
                enabledButton = true
            }
        }
        ConfirmButton.isEnabled = enabledButton
        ConfirmButton.backgroundColor = enabledButton ?  UIColor.darkText : UIColor.lightGray
    }
    
   
    
}
