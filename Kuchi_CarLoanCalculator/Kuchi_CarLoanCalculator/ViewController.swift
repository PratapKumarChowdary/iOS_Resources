//
//  ViewController.swift
//  Kuchi_CarLoanCalculator
//
//  Created by Yudu Eswar Vinay Pratap Kumar Kuchi on 4/4/23.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var vehiclePriceOL: UITextField!
    
    
    @IBOutlet weak var downpaymentOL: UITextField!
    
    
    @IBOutlet weak var tradeInValueOL: UITextField!
    
    
    
    @IBOutlet weak var salesTaxOL: UITextField!
    
    
    
    @IBOutlet weak var interestRateOL: UITextField!
    
    
    
    @IBOutlet weak var termsOL: UITextField!
    
    
    @IBOutlet weak var calculateBtnOL: UIButton!
    
    
    var vehiclePrice = 0.00
    var downPayment = 0.00
    var tradeInValue = 0.00
    var salesTax = 0.00
    var loanAmount = 0.00
    var interestRate = 0.00
    var terms = 0.00
    var finalTax = 0.00
    var monthlyPayment = 0.00
    var repaid = 0.00
    var finalInterest = 0.00
    var  roundedMonthlyPayment = 0.00
    var roundedRepaid = 0.00
    var roundedFinalInterest = 0.00
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func calculateBtn(_ sender: UIButton) {
        
        vehiclePrice = Double(vehiclePriceOL.text!)!
        downPayment = Double(downpaymentOL.text!)!
        tradeInValue = Double(tradeInValueOL.text!)!
        salesTax = Double(salesTaxOL.text!)!
        interestRate = Double(interestRateOL.text!)!
        terms = Double(termsOL.text!)!
        var monthlyInterest = interestRate/1200
        finalTax = vehiclePrice * salesTax / 100
        loanAmount = (vehiclePrice - downPayment - tradeInValue) + finalTax
        monthlyPayment = loanAmount * (monthlyInterest * pow((1 + monthlyInterest), terms)) / (pow((1+monthlyInterest), terms) - 1)
         roundedMonthlyPayment = round(monthlyPayment * 100)/100
        repaid = monthlyPayment * terms
         roundedRepaid = round(repaid * 100)/100
        finalInterest = repaid - loanAmount
         roundedFinalInterest = round(finalInterest * 100)/100
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                var transition = segue.identifier
                if(transition == "resultSegue"){
                    // Set the destination.
                    
                    var destination = segue.destination as! ResultViewController
                    
                    destination.carPrice = String(vehiclePrice)
                    destination.downPayment = String(downPayment)
                    destination.tradeInValue = String(tradeInValue)
                    destination.salesTax = String(finalTax)
                    destination.rate = String(interestRate)
                    destination.terms = String(terms)
                    destination.loanAmount = String(loanAmount)
                    destination.monthlyPayment = String(roundedMonthlyPayment)
                    destination.totalRepaid = String(roundedRepaid)
                    destination.totalInterest = String(roundedFinalInterest)

                }
            }

}

