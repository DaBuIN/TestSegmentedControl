//
//  ViewController.swift
//  TestSegmentedControl
//
//  Created by Chuei-Ching Chiou on 24/07/2017.
//  Copyright © 2017 DaBuIN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var FirstContainer: UIView!
    @IBOutlet weak var SecondContainer: UIView!
    @IBOutlet weak var ThirdContainer: UIView!
    
    
    @IBAction func segmentedValueChanged(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            self.FirstContainer.isHidden = false
            self.SecondContainer.isHidden = true
            self.ThirdContainer.isHidden = true

        case 1:
            self.FirstContainer.isHidden = true
            self.SecondContainer.isHidden = false
            self.ThirdContainer.isHidden = true
            
        case 2:
            self.FirstContainer.isHidden = true
            self.SecondContainer.isHidden = true
            self.ThirdContainer.isHidden = false

        default:
            break
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.FirstContainer.isHidden = false
        self.SecondContainer.isHidden = true
        self.ThirdContainer.isHidden = true
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

