//
//  ViewController.swift
//  homework
//
//  Created by Bekzat on 11/10/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startingDate: UIDatePicker!
    
    
    @IBOutlet weak var endingDate: UIDatePicker!
    
  
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SecondVC" {
            if let vc = segue.destination as? SecondViewController {
                vc.date1 = startingDate.date
                vc.date2 = endingDate.date
                 
                
            }
        }
    }

}

