//
//  ViewController.swift
//  xcodeapp05
//
//  Created by stoller on 2018/4/18.
//  Copyright © 2018年 hung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func keyboard(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    @IBOutlet weak var GenderSwitch: UISwitch!
    @IBOutlet weak var StarText: UITextField!
    @IBOutlet weak var BloodRadio: UISegmentedControl!
    
    @IBOutlet weak var HeightText: UILabel!
    @IBOutlet weak var WeightText: UILabel!
    
    @IBOutlet weak var ShowImage: UIImageView!
    @IBOutlet weak var ResultView: UITextView!
    
    
    var heightvalue:Int = 150
    var weightvalue:Int = 45
    
    @IBAction func HeightSlider(_ sender: UISlider) {
        
        HeightText.isHidden = false
        heightvalue = Int(sender.value)
        HeightText.text = "\(heightvalue)cm"
    }
    
    @IBAction func WeightSlider(_ sender: UISlider) {
        WeightText.isHidden = false
        weightvalue = Int(sender.value)
        WeightText.text = "\(weightvalue)kg"
    }
    
    let showAry = ["01","02","03","04"]
    
    
    @IBAction func SendButton(_ sender: AnyObject) {
        
        self.ResultView.text = "";
        var content = "";
        
        let constellation:String = StarText.text!
       
        
        if constellation == "射手座" && BloodRadio.selectedSegmentIndex == 2 && GenderSwitch.isOn == true && heightvalue == 160 && weightvalue <= 55 {
            ShowImage.image = UIImage(named: showAry[0])
            content = "遇到你的人真幸運～"
            
        }else if constellation == "雙子座" && BloodRadio.selectedSegmentIndex == 2 && GenderSwitch.isOn == false && heightvalue == 180 && weightvalue == 65 {
            ShowImage.image = UIImage(named: showAry[1])
            content = "想當你的女朋友～"
            
        }else if constellation == "水瓶座" && BloodRadio.selectedSegmentIndex == 0 && GenderSwitch.isOn == false && heightvalue >= 175 && weightvalue <= 75 {
            ShowImage.image = UIImage(named: showAry[2])
            content = "優於虎克船長的完美男神～"
            
        }else{
            ShowImage.image = UIImage(named: showAry[3])
            content = "去找個命中注定的完美伴侶吧～"
        }
        self.ResultView.text = content;
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

