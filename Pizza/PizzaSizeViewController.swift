//
//  PizzaSizeViewController.swift
//  Pizza
//
//  Created by Erik Basto Segovia on 19/08/17.
//  Copyright © 2017 Erik Basto Segovia. All rights reserved.
//

import UIKit

class PizzaSizeViewController: UIViewController,AKRadioButtonsControllerDelegate
{
    var pizza: Pizza = Pizza()
   
    var radioButtonsController: AKRadioButtonsController!
    @IBOutlet var radioButtons: [AKRadioButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.radioButtonsController = AKRadioButtonsController(radioButtons: self.radioButtons)
        self.radioButtonsController.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        pizza.size = (radioButtons[radioButtonsController.selectedIndex].titleLabel?.text)!
        
        let nextView = segue.destination as! PizzaDoughViewController
        nextView.pizza = pizza
        
    }
    
    
    func selectedButton(sender: AKRadioButton){
        
    }

}
