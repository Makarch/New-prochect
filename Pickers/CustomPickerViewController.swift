
//
//  CustomPickerViewController.swift
//  Pickers
//
//  Created by Kirill on 26.11.16.
//  Copyright © 2016 Kirill. All rights reserved.
//

import UIKit
import AudioToolbox
class CustomPickerViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    private var winSoundID : SystemSoundID = 0
    private var crunchsoundID : SystemSoundID = 0
    private var images : [UIImage]!
    @IBOutlet weak var button: UIButton!
   
    @IBOutlet weak var winLabel: UILabel!
    @IBOutlet weak var customPicker: UIPickerView!
    @IBAction func spin(_ sender: AnyObject) {
        var win = false
        var numInRow = -1
        var lastVal = -1
        
        for i in 0..<5 {
            let newValue = Int(arc4random_uniform(UInt32(images.count)))
            if newValue == lastVal{
                numInRow += 1
                
            }else {
                numInRow = 1
            }
            lastVal = newValue
            
            customPicker.selectRow(newValue, inComponent: i, animated: true)
            customPicker.reloadComponent(i)
            if numInRow >= 3{
                win = true
            }
        }
        
        if crunchsoundID == 0 {
            let soundURL = Bundle.main.url(forResource: "crunch", withExtension: "vaw")!as CFURL
            AudioServicesCreateSystemSoundID(soundURL, &crunchsoundID)
        }
        AudioServicesPlaySystemSound(crunchsoundID)
        
        if win {
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW), Int64(0.5 * Double(NSEC_PER_SEC)),){
                self.playWithSound()
            }
        }else {
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW), Int64(0.5 * Double(NSEC_PER_SEC)),){
                self.showButton()
            }
        }
        button.isHidden = true
        winLabel.text = " "
    
    }
    func showButton() { \\ Нажатие кнопки 
        
        button.isHidden  = false
    
    }
    
    func playWithSound() {
        
        if winSoundID == 0{
            let soundURL = Bundle.main.url(forResource: "win", withExtension: "wav")
           AudioServicesCreateSystemSoundID(soundURL as! CFURL, &winSoundID)
            
        }
        AudioServicesPlaySystemSound(winSoundID)
        winLabel.text = "WINNER!!"
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW), Int64(1.5 * Double(NSEC_PER_SEC)), ){
            self.showButton()
        }
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        images = [
            UIImage(named: "seven")!,
            UIImage(named: "bar")!,
            UIImage(named:  "crown")!,
            UIImage(named: "cherry")!,
            UIImage(named: "lemon")!,
            UIImage(named: "apple")!,
        ]
        winLabel.text = " "
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 5
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       return images.count
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let image = images[row]
        let imageView = UIImageView(image: image)
        return imageView
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64
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
