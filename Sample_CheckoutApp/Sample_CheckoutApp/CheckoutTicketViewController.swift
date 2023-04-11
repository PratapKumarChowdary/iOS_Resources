//
//  CheckoutTicketViewController.swift
//  Sample_CheckoutApp
//
//  Created by Dhana Sri Kuchi on 4/10/23.
//

import UIKit

class CheckoutTicketViewController: UIViewController {
    
    
    @IBOutlet weak var checoutTextOL: UILabel!
    
    
    @IBOutlet weak var airlineText: UILabel!
    
    
    @IBOutlet weak var displayImage: UIImageView!
    
    
    var checkouttxt = ""
    var airlinetxt = ""
    var imagename = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        checoutTextOL.text! = checkouttxt
        airlineText.text! = airlinetxt
        //displayImage.image = UIImage(named: imagename)
        updateAndAnimate(imagename)
        
        
    }
    
    
    func updateAndAnimate(_ imageName : String){
          
          //making the current image opaque.
          UIView.animate(withDuration: 1, animations: {
              self.displayImage.alpha = 0
          })
          
          //Assign the new image with animation and make it transparent. (alpha = 1)
          
          UIView.animate(withDuration: 1, delay:0.5, animations: {
              self.displayImage.alpha = 1
              self.displayImage.image = UIImage(named: imageName)
          })
          

      }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
