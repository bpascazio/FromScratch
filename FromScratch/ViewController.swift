//
//  ViewController.swift
//  FromScratch
//
//  Created by Bob Pascazio on 12/16/15.
//  Copyright © 2015 Bytefly, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var label:UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        let width = view.frame.width
        let height = view.frame.height
        print(width)
        print(height)
        
        let x = width/2 - 25
        let y = height/2 - 25
        
        let view1 = UIView(frame: CGRect(x: x, y: y, width: 50, height: 50))
        view1.backgroundColor = UIColor.greenColor()
        self.view.addSubview(view1)
        
        let view2 = UIView(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
        view2.backgroundColor = UIColor.redColor()
        view1.addSubview(view2)
        
        let image1 = UIImage(named: "dog")
        let view3 = UIImageView(frame: CGRect(x: 100, y: 100, width: 75, height: 75))
        view3.image = image1
        view.addSubview(view3)
        
        self.label = UILabel(frame: CGRect(x: width-130, y: 100, width: 130, height: 40))
        self.label!.text = "No Weather Yet!"
        self.view.addSubview(label!)
        
        let button1 = UIButton(frame: CGRect(x: 10, y: 140, width: 70, height: 40))
        button1.setTitle("Sun", forState: .Normal)
        button1.addTarget(self, action: "button1Pressed:", forControlEvents: .TouchUpInside)
        self.view.addSubview(button1)
        
        let button2 = UIButton(frame: CGRect(x: 90, y: 140, width: 70, height: 40))
        button2.setTitle("Rain", forState: .Normal)
        button2.addTarget(self, action: "button2Pressed:", forControlEvents: .TouchUpInside)
        self.view.addSubview(button2)
        
        let button3 = UIButton(frame: CGRect(x: 90, y: 240, width: 70, height: 40))
        button3.setTitle("GO!", forState: .Normal)
        button3.addTarget(self, action: "button3Pressed:", forControlEvents: .TouchUpInside)
        self.view.addSubview(button3)
        
    }

    func button1Pressed(sender: AnyObject) {
        
        self.label!.text = "It is Sunny today"
        UIView.animateWithDuration(0.7, delay: 0.0, options: .CurveEaseOut, animations: {
            self.label?.frame = CGRect(x: 0, y: 0, width: 130, height: 40)
            }, completion: { finished in
                print("animation completed")
        })
    }
    
    func button2Pressed(sender: AnyObject) {
        
        let width = view.frame.width
        self.label!.text = "It is Raining today"
        UIView.animateWithDuration(0.7, delay: 0.0, options: .CurveEaseOut, animations: {
            self.label?.frame = CGRect(x: width-130, y: 0, width: 130, height: 40)
            }, completion: { finished in
                print("animation completed")
        })
    }
    
    func button3Pressed(sender: AnyObject) {
        
        let vc = SecondViewController()
        self.presentViewController(vc, animated: true, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

