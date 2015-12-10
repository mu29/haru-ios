//
//  GenderViewController.swift
//  Haru
//
//  Created by Sunwoo Park on 2015. 12. 9..
//  Copyright © 2015년 Pedaling. All rights reserved.
//

import UIKit

class GenderViewController: UIViewController {
    
    @IBOutlet weak var promptLabel: UILabel!
    @IBOutlet weak var maleButton: UIButton!
    @IBOutlet weak var femaleButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        promptLabel.alpha = 0
        maleButton.alpha = 0
        femaleButton.alpha = 0
        
        promptLabel.fadeIn(completion: nil)
        maleButton.fadeIn(completion: nil)
        femaleButton.fadeIn(completion: nil)
    }
    
    override func viewWillAppear(animated: Bool) {
        promptLabel.alpha = 1.0
        maleButton.alpha = 1.0
        femaleButton.alpha = 1.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func maleTapped(sender: AnyObject) {
        promptLabel.fadeOut(completion: nil)
        maleButton.fadeOut(completion: nil)
        femaleButton.fadeOut { (value) -> Void in
            self.performSegueWithIdentifier("Next", sender: nil)
        }
    }

    @IBAction func femaleTapped(sender: AnyObject) {
        promptLabel.fadeOut(completion: nil)
        maleButton.fadeOut(completion: nil)
        femaleButton.fadeOut { (value) -> Void in
            self.performSegueWithIdentifier("Next", sender: nil)
        }
    }

}
