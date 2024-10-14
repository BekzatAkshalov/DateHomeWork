//
//  SecondViewController.swift
//  homework
//
//  Created by Bekzat on 11/10/24.
//

import UIKit

class SecondViewController: UIViewController {

  
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var labelMain: UILabel!
    
    var timer = Timer()
    var date1 = Date()
    var date2 = Date()
    var timerDate = Date()
    
    var isTimerRunning = false
   
    var savedDate = Date()
    
    
    
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM yyyy,  EEE HH:mm"
        label1.text = formatter.string(from: date1)
        label2.text = formatter.string(from: date2)
       
        timerDate = date1
        labelMain.text = formatter.string(from: timerDate)
        
        
 
    }
    
    @objc func count() {
        
        if timerDate >= date2 {
            timer.invalidate()
            return
        }
        
        timerDate = timerDate.addingTimeInterval(60 * 60)
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM yyyy,  EEE HH:mm"
        labelMain.text = formatter.string(from: timerDate)
        
        
        
    }
    
    @IBAction func startTimer(_ sender: Any) {
        if isTimerRunning {
            return
        }
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(count), userInfo: nil, repeats: true)
        
        isTimerRunning = true
        
    }
    
    @IBAction func stopTimer(_ sender: Any) {
        timer.invalidate()
        isTimerRunning = false
    }
    
    
    @IBAction func restartTimer(_ sender: Any) {
        timer.invalidate()
        isTimerRunning = false
        timerDate = date1
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM yyyy,  EEE HH:mm"
        labelMain.text = formatter.string(from: timerDate)
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
