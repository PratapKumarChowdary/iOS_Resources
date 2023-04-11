//
//  ResultViewController.swift
//  Kuchi_CarLoanCalculator
//
//  Created by Dhana Sri Kuchi on 4/4/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    
    @IBOutlet weak var carPriceOL: UILabel!
    
    
    @IBOutlet weak var downPaymentOL: UILabel!
    
    
    @IBOutlet weak var tradeInOL: UILabel!
    
    @IBOutlet weak var taxOL: UILabel!
    
    
    @IBOutlet weak var loanAmountOL: UILabel!
    
    
    @IBOutlet weak var rateOL: UILabel!
    
    
    
    @IBOutlet weak var termsOL: UILabel!
    
    
    
    @IBOutlet weak var monthlyInstallmentsOL: UILabel!
    
    
    
    
    @IBOutlet weak var totalInterestOL: UILabel!
    
    
    @IBOutlet weak var totalRepaidOL: UILabel!
    
    
    
    @IBOutlet weak var imageOL: UIImageView!
    
    var carPrice = ""
    var downPayment = ""
    var salesTax = ""
    var tradeInValue = ""
    var loanAmount = ""
    var rate = ""
    var terms = ""
    var monthlyPayment = ""
    var totalInterest = ""
    var totalRepaid = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        carPriceOL.text = carPriceOL.text! + "                  $\(carPrice)"
        downPaymentOL.text = downPaymentOL.text! + "              $\(downPayment)"
        tradeInOL.text = tradeInOL.text! + "               $\(tradeInValue)"
        taxOL.text = taxOL.text! + "                      \(salesTax)%"
        loanAmountOL.text = loanAmountOL.text! + "            $\(loanAmount)"
        rateOL.text! = rateOL.text! + "                  \(rate)%"
        termsOL.text! = termsOL.text! + "              \(terms)"
        monthlyInstallmentsOL.text! = monthlyInstallmentsOL.text! + "     $\(monthlyPayment)"
        totalInterestOL.text! = totalInterestOL.text! + "               $\(totalInterest)"
        totalRepaidOL.text! = totalRepaidOL.text! + "               $\(totalRepaid)"
        imageOL.image = nil
    }
    


}
