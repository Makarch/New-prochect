//
//  DependentComponentPickereViewController.swift
//  Pickers
//
//  Created by Kirill on 26.11.16.
//  Copyright © 2016 Kirill. All rights reserved.
//

import UIKit

//class DependentComponentPickereViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
 /*   @IBOutlet weak var dependentPicker: UIPickerView!
    @IBAction func buttonPressed(_ sender: AnyObject) {
        let stateRow = dependentPicker.selectedRow(inComponent: stateCmponent)
        let zipRow = dependentPicker.selectedRow(inComponent: zipComponent)
         let state = states[stateRow]
        let zip = zips[zipRow]
        
        let title = "You selected zip code \(zip)"
        
        let alert = UIAlertController(title: title, message: "\(zip) is in \(state)", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    private let stateCmponent = 0
    private let zipComponent = 1
    private var stateZips: [String : [String]]!
    private var states  : [String]!
    private var zips : [String]!

   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       let bundle = Bundle.main
        let plistUrl = bundle.url(forResource: "statedictionary", withExtension: "plist")
        stateZips = NSDictionary(contentsOf: plistUrl!) as! [String:[String]]
        
        let allStates = stateZips.keys
        
        states = sorted(allStates)
        
        let selectedState = states [0]
        
        zips = stateZips[selectedState]
        
        
        
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == stateCmponent {
            return states.count
        }else {
            return zips.count
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == stateCmponent {
            return states[row]
        }else {
            return zips[row]
        }

    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == stateCmponent{
            let selectedStates = states[row]
            zips = stateZips[selectedStates]
            dependentPicker.reloadComponent(zipComponent)
            dependentPicker.selectRow(0, inComponent: zipComponent, animated: true)
            
        }
    
    }
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        let pickerWidth = pickerView.bounds.size.width
        if component == zipComponent {
            return pickerWidth/3
        }else{
            return 2 * pickerWidth/3
        }
    }
    
    
    */
 

//}
