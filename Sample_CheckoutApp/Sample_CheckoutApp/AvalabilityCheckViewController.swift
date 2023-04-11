//
//  ViewController.swift
//  Sample_CheckoutApp
//
//  Created by Dhana Sri Kuchi on 4/10/23.
//

import UIKit

class AvalabilityCheckViewController: UIViewController {
    
    
    @IBOutlet weak var nameOL: UITextField!
    
    
    @IBOutlet weak var bookingIDOL: UITextField!
    
    
    
    @IBOutlet weak var AvailabilityBtn: UIButton!
    

    @IBOutlet weak var statusLblOL: UILabel!
    
    
    @IBOutlet weak var imageOL: UIImageView!
    
    
    @IBOutlet weak var checkoutTktOL: UIButton!
    
    
    
    var ticket = Ticket()
    var isTicketFound = false
    var ticketsList = TicketsArray
    
    var passengerName = ""
    var bookingid = ""
    var imageName = ""
    var airlinesName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        checkoutTktOL.isEnabled = false
    }
    
    
    
    @IBAction func AvailabilityOL(_ sender: UIButton) {
        
        let name = nameOL.text!
        let id = bookingIDOL.text!
        
        for ticket in ticketsList{
            if id.elementsEqual(ticket.bookingID){
                
                statusLblOL.text = "ID is Found"
                //imageOL.image = UIImage(named: ticket.airlineImage)
                
                checkoutTktOL.isEnabled = true
                isTicketFound = true
                passengerName = name
                bookingid = id
                imageName = ticket.airlineImage
                updateAndAnimate(imageName)
                airlinesName = ticket.airlineName
                break
            }
            
            else{
                checkoutTktOL.isEnabled = false
                statusLblOL.text = "Booking ID Not Found!"
                imageOL.image = UIImage(named: "default")
            }
        }
        
        
    }
    

    @IBAction func checkoutTktOL(_ sender: UIButton) {
        
        
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           let transition = segue.identifier
           if transition == "checkoutSegue"{
               //Create a destination of type checkoutTicketViewController
               let destination = segue.destination as! CheckoutTicketViewController
               
               if isTicketFound{
                   destination.checkouttxt = "\(passengerName) your checkout is Successfull!!"
                   destination.airlinetxt = "\(passengerName) you will be flying through \(airlinesName)"
                   destination.imagename = imageName
                   
                   nameOL.text = ""
                   bookingIDOL.text = ""
                   checkoutTktOL.isEnabled = false
                   imageOL.image = UIImage(named: "default")
                   statusLblOL.text = "Status"
               }
               
               
               
               
           }
       }
    
    func updateAndAnimate(_ imageName : String){
          
          //making the current image opaque.
          UIView.animate(withDuration: 1, animations: {
              self.imageOL.alpha = 0
          })
          
          //Assign the new image with animation and make it transparent. (alpha = 1)
          
          UIView.animate(withDuration: 1, delay:0.5, animations: {
              self.imageOL.alpha = 1
              self.imageOL.image = UIImage(named: imageName)
          })
          

      }
    
}

