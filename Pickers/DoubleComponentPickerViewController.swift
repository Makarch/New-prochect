//
//  DoubleComponentViewController.swift
//  Pickers
//
//  Created by Kirill on 26.11.16.
//  Copyright © 2016 Kirill. All rights reserved.
//

import UIKit

class DoubleComponentViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    private let fillingComponent = 0
    private let breadComponent = 1
    private let fillingTypes = ["Ham", "Turckey", "peanut Butter", "Tuna Salad", "Chicken Salad", "Roast Beed", "Vagemite"]
    private let breadTypes = ["Wite", "Whole Wheat", "Rye", "Sourdough", "Seven Grain"]
    @IBOutlet weak var doublePicker: UIPickerView!
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let fillingRow = doublePicker.selectedRow(inComponent: fillingComponent)
        
        let breadRow = doublePicker.selectedRow(inComponent: breadComponent)
        
        
        let filling  = fillingTypes[fillingRow]
        
        let bread = breadTypes[breadRow]
        
        
        let message = "Your \(filling) on \(bread) bread will be right up."
        
        let alert = UIAlertController(title: "Thenk you for your order", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "You're welcome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == breadComponent{
            return breadTypes.count
        }else {
            return fillingTypes.count
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == breadComponent{
            return breadTypes[row]
        }else {
            return fillingTypes[row]
        }
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
