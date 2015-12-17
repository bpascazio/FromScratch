//
//  SecondViewController.swift
//  FromScratch
//
//  Created by Bob Pascazio on 12/16/15.
//  Copyright © 2015 Bytefly, Inc. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.purpleColor()
        
        let button3 = UIButton(frame: CGRect(x: 90, y: 240, width: 70, height: 40))
        button3.setTitle("EXIT!", forState: .Normal)
        button3.addTarget(self, action: "button3Pressed:", forControlEvents: .TouchUpInside)
        self.view.addSubview(button3)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func button3Pressed(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
