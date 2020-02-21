//
//  ViewController.swift
//  TrafficSignalApp
//
//  Created by apple on 21/02/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var red: UILabel!
    @IBOutlet weak var viewcontent: UIView!
    
    @IBOutlet weak var orange: UILabel!
    @IBOutlet weak var green: UILabel!
    override func viewDidLoad() {

        red.layer.cornerRadius = red.frame.width/2
        red.clipsToBounds = true
        
        orange.layer.cornerRadius = orange.frame.width/2
        orange.clipsToBounds = true
        
        green.layer.cornerRadius = green.frame.width/2
        green.clipsToBounds = true
        
        self.red.isHidden = true
        self.orange.isHidden = true
        self.green.isHidden = true
        
        self.stop.isHidden = true
        self.ready.isHidden = true
        self.go.isHidden = true
      

       
        
        Timer.scheduledTimer(withTimeInterval: 11, repeats: true) { timer in
            
            
                     
                 DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    
                           self.red.isHidden = false
                           self.orange.isHidden = true
                           self.green.isHidden = true
                    
                    
                           self.stop.isHidden = false
                           self.ready.isHidden = true
                           self.go.isHidden = true
                    
                  
                 }
                     
                     DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
                        
                        
                         self.red.isHidden = true
                         self.orange.isHidden = false
                         self.green.isHidden = true
                        
                        
                        self.stop.isHidden = true
                        self.ready.isHidden = false
                        self.go.isHidden = true
                      
                     }
                     DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
                        
                         self.red.isHidden = true
                         self.orange.isHidden = true
                         self.green.isHidden = false
                        
                        self.stop.isHidden = true
                        self.ready.isHidden = true
                        self.go.isHidden = false
                        
                        
                      
                     }

        }
    
        

        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
  

    @IBOutlet weak var stop: UILabel!
    
    @IBOutlet weak var go: UILabel!
    @IBOutlet weak var ready: UILabel!
    
}

