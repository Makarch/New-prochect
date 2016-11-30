//
//  SingleComponentViewController.swift
//  Pickers
//
//  Created by Kirill on 26.11.16.
//  Copyright © 2016 Kirill. All rights reserved.
//

import UIKit

class SingleComponentViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    private let characterNames = ["Lucke", "Leia", "Han", "Chewbacca", "Artoo", "Threepio", "Lando"]
    
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let row = singlePicker.selectedRow(inComponent: 0)
        let selected = characterNames[row]
        let title = "You selected\(selected)"
        
        let alert = UIAlertController(title: title, message: "Thenk you for Choosing", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "You're welcome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var singlePicker: UIPickerView!

    override func viewDidLoad() {
   
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       return characterNames.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
     return characterNames[row]
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
