//
//  ViewController.swift
//  Kuchi_SurgeryCostApp
//
//  Created by Kuchi,Yudu Eswar Vinay Pratap Kumar on 2/28/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var headingOutlet: UILabel!
    
    
    @IBOutlet weak var patientNameOL: UITextField!
    
    
    @IBOutlet weak var typeOutlet: UITextField!
    
    
    
    @IBOutlet weak var costOutlet: UITextField!
    
    
    @IBOutlet weak var imageOL: UIImageView!
    
    @IBOutlet weak var resultOutlet: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calcBtn(_ sender: UIButton) {
        
        var name = patientNameOL.text!
        var type = typeOutlet.text!
        var cost = (costOutlet.text!)
        
        if(name == "" || type == "" || cost == ""){
            resultOutlet.text = "Enter all the details"
            imageOL.image = UIImage(named: "noResults")
        }
        else if(type == "Heart" || type == "heart"){
            
            var tax = 1 + (11.75 / 100)
            
            var insurance = 500.0
            
            var scost = Double(costOutlet.text!)
            var costwithTax = Double(scost! * tax)
            
            var totalCost = Double(costwithTax - insurance)
            
            let std = Double(round(100 * totalCost)/100)
            
            resultOutlet.text = "\(name):\rTotal Cost for Heart 🫀Surgery is $\(std) "
                      
                      imageOL.image = UIImage(named: "Heart")
            
            
            
        }
        else if(type == "Brain" || type == "brain"){
            
            var tax = 1 + (13.5 / 100)
            
            var insurance = 750.0
            
            var scost = Double(costOutlet.text!)
            var costwithTax = Double(scost! * tax)
            
            var totalCost = Double(costwithTax - insurance)
            
            let std = Double(round(100 * totalCost)/100)
            
            resultOutlet.text = "\(name):\rTotal Cost for Brain 🧠Surgery is $\(std) "
                      
                      imageOL.image = UIImage(named: "Brain")
            
            
            
        }else{
            var tax = 1 + (6.25 / 100)
            
            var insurance = 350.0
            
            var scost = Double(costOutlet.text!)
            var costwithTax = Double(scost! * tax)
            
            var totalCost = Double(costwithTax - insurance)
            
            let std = Double(round(100 * totalCost)/100)
            
            resultOutlet.text = "\(name):\rTotal Cost for Knee 🦿Replacement is $\(std) "
                      
                      imageOL.image = UIImage(named: "Knee")
        }
        
        
    }
    
}

