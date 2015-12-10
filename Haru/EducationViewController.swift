//
//  EducationViewController.swift
//  Haru
//
//  Created by Sunwoo Park on 2015. 12. 9..
//  Copyright © 2015년 Pedaling. All rights reserved.
//

import UIKit

class EducationViewController: UIViewController {
    
    @IBOutlet weak var promptLabel: UILabel!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var notAStudentButton: UIButton!
    @IBOutlet weak var grade1Button: UIButton!
    @IBOutlet weak var grade2Button: UIButton!
    @IBOutlet weak var grade3Button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        schoolNameTextField.addTarget(self, action: "textFieldDidChange:", forControlEvents: UIControlEvents.EditingChanged)
        
        promptLabel.alpha = 0
        schoolNameTextField.alpha = 0
        notAStudentButton.alpha = 0
        grade1Button.alpha = 0
        grade2Button.alpha = 0
        grade3Button.alpha = 0
        
        promptLabel.fadeIn(completion: nil)
        schoolNameTextField.fadeIn(completion: nil)
        notAStudentButton.fadeIn(completion: nil)
    }
    
    func textFieldDidChange(textField: UITextField) {
        if textField.text!.isEmpty {
            promptLabel.text = "무슨 학교를 다니시나요?"
            
            grade1Button.fadeOut(completion: nil)
            grade2Button.fadeOut(completion: nil)
            grade3Button.fadeOut(completion: nil)
        } else {
            promptLabel.text = "학년은 어떻게 되시나요?"
            
            grade1Button.fadeIn(completion: nil)
            grade2Button.fadeIn(completion: nil)
            grade3Button.fadeIn(completion: nil)
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        promptLabel.alpha = 1.0
        schoolNameTextField.alpha = 1.0
        notAStudentButton.alpha = 1.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func notAStudentTapped(sender: AnyObject) {
    }
    
    @IBAction func grade1Tapped(sender: AnyObject) {
    }
    
    @IBAction func grade2Tapped(sender: AnyObject) {
    }
    
    @IBAction func grade3Tapped(sender: AnyObject) {
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
