//
//  ViewController.swift
//  SampleRave
//
//  Created by Arun Amuri on 10/10/2019.
//  Copyright © 2019 Arun Amuri. All rights reserved.
//

import UIKit
import Rave

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        showRaveView()
    }

}


extension ViewController: RavePaymentManagerDelegate {
    
    func showRaveView(){
        let raveMgr = RavePayManager()
        raveMgr.email = "test@example.com" //Customer's email address
        raveMgr.amount = "25" // Amount
        raveMgr.transcationRef = "Unique-Transaction-ref" //Unique transaction reference
        raveMgr.currencyCode = "NGN"
        raveMgr.delegate = self
        raveMgr.narration = "narration"
        raveMgr.supportedPaymentMethods = [.card,.account] // Choose supported payment channel allowed
        //Set your recurring payment ID, Only set this if you are enabling recurring payments
        //raveMgr.paymentPlan = <PAYMENT PLAN ID>
        
        raveMgr.show(withController:self)
    }
    
    func ravePaymentManagerDidCancel(_ ravePaymentManager: RavePayManager) {
        
    }
    func ravePaymentManager(_ ravePaymentManager: RavePayManager, didSucceedPaymentWithResult result: [String : AnyObject]) {
        
    }
    func ravePaymentManager(_ ravePaymentManager: RavePayManager, didFailPaymentWithResult result: [String : AnyObject]) {
        
    }
}
