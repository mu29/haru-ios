//
//  TeacherSignupViewController.swift
//  Haru
//
//  Created by Sunwoo Park on 2015. 12. 9..
//  Copyright © 2015년 Pedaling. All rights reserved.
//

import UIKit

class TeacherSignupViewController: UIViewController {
    
    @IBOutlet weak var promptLabel: UILabel!
    @IBOutlet weak var yesButton: UIView!
    @IBOutlet weak var noButton: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        promptLabel.alpha = 0
        yesButton.alpha = 0
        noButton.alpha = 0
        
        promptLabel.fadeIn(completion: nil)
        yesButton.fadeIn(completion: nil)
        noButton.fadeIn(completion: nil)
    }
    
    override func viewWillDisappear(animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
        super.viewWillDisappear(animated)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        
        promptLabel.alpha = 1.0
        yesButton.alpha = 1.0
        noButton.alpha = 1.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func yesTapped(sender: AnyObject) {
    }
    
    @IBAction func noTapped(sender: AnyObject) {
        promptLabel.fadeOut(completion: nil)
        yesButton.fadeOut(completion: nil)
        noButton.fadeOut { (value) -> Void in
            self.performSegueWithIdentifier("ChooseGender", sender: nil)
        }
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
