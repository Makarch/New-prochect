//
//  DatePickerViewController.swift
//  Pickers
//
//  Created by Kirill on 26.11.16.
//  Copyright © 2016 Kirill. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {

    @IBOutlet weak var dataPicker: UIDatePicker!
    
    @IBAction func buttonPressed(_ sender: AnyObject) {
        
        let date = dataPicker.date
        let massage = "The date and time you selected is \(date)"
        let alert = UIAlertController(title: "Date and Time selected", message: massage,
                                      preferredStyle: .alert)
        let action = UIAlertAction(title: "Thet's so true!", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let data = Date ()
        
        dataPicker.setDate(data, animated: false)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
