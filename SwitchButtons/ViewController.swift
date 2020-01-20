//
//  ViewController.swift
//  SwitchButtons
//
//  Created by R Shantha Kumar on 9/16/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lightSwitch: UISwitch!
    @IBOutlet weak var light2Switch: UISwitch!
    @IBOutlet weak var fanSwitch: UISwitch!
    @IBOutlet weak var fan2Switch: UISwitch!
    @IBOutlet weak var acSwitch: UISwitch!
    @IBOutlet weak var projectorSwitch: UISwitch!
    @IBOutlet weak var speakerSwitch: UISwitch!
    @IBOutlet weak var cameraSwitch: UISwitch!
    
    @IBOutlet weak var mainSwitch: UISwitch!
    
    
    @IBOutlet weak var textLabel: UILabel!
    
    
    
    @objc func Switches(changedSwitches:UISwitch!)
    {
      
        
        
                if(changedSwitches==lightSwitch)
                {
                    if(lightSwitch.isOn&&light2Switch.isOn)
                    {
                        
                        projectorSwitch.setOn(false, animated: true)
                        speakerSwitch.setOn(false, animated: true)
                        
                        textLabel.text = " two lights ON ,projector and speaker  should be  OFF"
                        textLabel.numberOfLines = 0
                        
                    }
                    if(light2Switch.isOn == false && lightSwitch.isOn == false)
                    {
                        projectorSwitch.setOn(true, animated: true)
                        speakerSwitch.setOn(true, animated: true)
                        textLabel.text = " two lights OFF ,projector and speaker  should be  ON"
                        textLabel.numberOfLines = 0
                    }
                }
        
        
                if(changedSwitches==light2Switch)
                {
                    if(lightSwitch.isOn&&light2Switch.isOn)
                    {
                        projectorSwitch.setOn(false, animated: true)
                        speakerSwitch.setOn(false, animated: true)
                        textLabel.text = " two lights ON ,projector and speaker  should be  OFF"
                        textLabel.numberOfLines = 0
                    }
                    if(light2Switch.isOn == false && lightSwitch.isOn == false)
                    {
                        projectorSwitch.setOn(true, animated: true)
                        speakerSwitch.setOn(true, animated: true)
                        textLabel.text = " two lights OFF ,projector and speaker  should be  ON"
                        textLabel.numberOfLines = 0
                    }
                }
        
                if(changedSwitches == projectorSwitch)
                {
                if(projectorSwitch.isOn == true)
                {
                lightSwitch.setOn(false, animated: true)
                light2Switch.setOn(false, animated: true)
                speakerSwitch.setOn(true, animated: true)
                    textLabel.text = " projector ON ,speaker is going to ON and lights should be OFF"
                    textLabel.numberOfLines = 0
                }else{
                    lightSwitch.setOn(true, animated: true)
                    light2Switch.setOn(true, animated: true)
                    speakerSwitch.setOn(false, animated: true)
                    textLabel.text = " projector OFF ,speaker is going to OFF and lights should be ON"
                    textLabel.numberOfLines = 0
                }
            }
        
        if(changedSwitches==fanSwitch)
        {
            if(fanSwitch.isOn&&fan2Switch.isOn)
            {
                acSwitch.setOn(false, animated: true)
                textLabel.text = " fans are ON ,AC should be OFF"
                textLabel.numberOfLines = 0
                
            }
            if(fanSwitch.isOn == false && fan2Switch.isOn == false)
            {
                acSwitch.setOn(true, animated: true)
                textLabel.text = " fans are OFF ,AC should be ON"
                textLabel.numberOfLines = 0
            }
        }
        
        
        if(changedSwitches==fan2Switch)
        {
            if(fanSwitch.isOn&&fan2Switch.isOn)
            {
                acSwitch.setOn(false, animated: true)
                textLabel.text = " fans are ON ,AC should be OFF"
                textLabel.numberOfLines = 0
                
            }
            if(fanSwitch.isOn == false && fan2Switch.isOn == false)
            {
                acSwitch.setOn(true, animated: true)
                textLabel.text = " fans are OFF ,AC should be ON"
                textLabel.numberOfLines = 0
            }
        }
        
        if(changedSwitches == acSwitch)
        {
            if(acSwitch.isOn == true)
            {
                fanSwitch.setOn(false, animated: true)
                fan2Switch.setOn(false, animated: true)
                textLabel.text = " AC is ON ,fans should be OFF"
                textLabel.numberOfLines = 0
            }else{
                fanSwitch.setOn(true, animated: true)
                fan2Switch.setOn(true, animated: true)
                textLabel.text = " AC is OFF ,fans should be ON"
                textLabel.numberOfLines = 0
            }
        }
        
        
        if(changedSwitches == mainSwitch)
        {
            if(mainSwitch.isOn == true)
            {
                fanSwitch.setOn(false, animated: true)
                fan2Switch.setOn(false, animated: true)
                    lightSwitch.setOn(false, animated: true)
                light2Switch.setOn(false, animated: true)
                acSwitch.setOn(false, animated: true)
                projectorSwitch.setOn(false, animated: true)
                cameraSwitch.setOn(true, animated: true)
                speakerSwitch.setOn(false, animated: true)
                textLabel.text = " MAIN switch is ON  then all switches going to ON"
                textLabel.numberOfLines = 0
            }else
            {
                fanSwitch.setOn(false, animated: true)
                fan2Switch.setOn(false, animated: true)
                lightSwitch.setOn(false, animated: true)
                light2Switch.setOn(false, animated: true)
                acSwitch.setOn(false, animated: true)
                projectorSwitch.setOn(false, animated: true)
                cameraSwitch.setOn(false, animated: true)
                speakerSwitch.setOn(false, animated: true)
                textLabel.text = " MAIN switch is OFF then all switches going to  OFF"
                textLabel.numberOfLines = 0
            }
            
            
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainSwitch.tintColor = UIColor.orange
        mainSwitch.onTintColor = UIColor.red
        mainSwitch.thumbTintColor = UIColor.gray
        view.addSubview(mainSwitch)
        mainSwitch.addTarget(self, action: #selector(Switches(changedSwitches:)), for: UIControl.Event.valueChanged)
        
    
        cameraSwitch.tintColor = UIColor.orange
        cameraSwitch.onTintColor = UIColor.green
        cameraSwitch.thumbTintColor = UIColor.gray
        view.addSubview(cameraSwitch)
        cameraSwitch.addTarget(self, action: #selector(Switches(changedSwitches:)), for: UIControl.Event.valueChanged)
        
        
        projectorSwitch.tintColor = UIColor.orange
        projectorSwitch.onTintColor = UIColor.green
        projectorSwitch.thumbTintColor = UIColor.gray
        view.addSubview(projectorSwitch)
         projectorSwitch.addTarget(self, action: #selector(Switches(changedSwitches:)), for: UIControl.Event.valueChanged)
        
        speakerSwitch.tintColor = UIColor.orange
        speakerSwitch.onTintColor = UIColor.green
        speakerSwitch.thumbTintColor = UIColor.gray
        view.addSubview(speakerSwitch)
        speakerSwitch.addTarget(self, action: #selector(Switches(changedSwitches:)), for: UIControl.Event.valueChanged)
        
        
        
        lightSwitch.tintColor = UIColor.orange
        lightSwitch.onTintColor = UIColor.green
        lightSwitch.thumbTintColor = UIColor.gray
        view.addSubview(lightSwitch)
        lightSwitch.addTarget(self, action: #selector(Switches(changedSwitches:)), for: UIControl.Event.valueChanged)
        
        light2Switch.tintColor = UIColor.orange
        light2Switch.onTintColor = UIColor.green
        light2Switch.thumbTintColor = UIColor.gray
        view.addSubview(light2Switch)
        light2Switch.addTarget(self, action: #selector(Switches(changedSwitches:)), for: UIControl.Event.valueChanged)
        
        acSwitch.tintColor = UIColor.orange
        acSwitch.onTintColor = UIColor.green
        acSwitch.thumbTintColor = UIColor.gray
        view.addSubview(acSwitch)
        acSwitch.addTarget(self, action: #selector(Switches(changedSwitches:)), for: UIControl.Event.valueChanged)
        
        fanSwitch.tintColor = UIColor.orange
        fanSwitch.onTintColor = UIColor.green
        fanSwitch.thumbTintColor = UIColor.gray
        view.addSubview(fanSwitch)
        fanSwitch.addTarget(self, action: #selector(Switches(changedSwitches:)), for: UIControl.Event.valueChanged)
        
        fan2Switch.tintColor = UIColor.orange
        fan2Switch.onTintColor = UIColor.green
        fan2Switch.thumbTintColor = UIColor.gray
        view.addSubview(fan2Switch)
        fan2Switch.addTarget(self, action: #selector(Switches(changedSwitches:)), for: UIControl.Event.valueChanged)
        
        
        
       
        
  

//@available(iOS 2.0, *)
//open class UISwitch : UIControl, NSCoding {
//
//
//    @available(iOS 5.0, *)
//    open var onTintColor: UIColor?
//
//    @available(iOS 6.0, *)
//    open var tintColor: UIColor!
//
//    @available(iOS 6.0, *)
//    open var thumbTintColor: UIColor?
//
//
//    @available(iOS 6.0, *)
//    open var onImage: UIImage?
//
//    @available(iOS 6.0, *)
//    open var offImage: UIImage?
//
//
//    open var isOn: Bool
//
//
//    public init(frame: CGRect) // This class enforces a size appropriate for the control, and so the frame size is ignored.
//
//    public init?(coder aDecoder: NSCoder)
//
//
//    open func setOn(_ on: Bool, animated: Bool) // does not send action
}

}

