//
//  ViewController.swift
//  MemeMaker
//
//  Created by Salvador Garcia on 1/17/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var topSegmentedControl: UISegmentedControl!
    @IBOutlet var bottomSegmentedControl: UISegmentedControl!
    
    @IBOutlet var topLabel: UILabel!
    @IBOutlet var bottomLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func segmentedValueChanged(_ sender: UISegmentedControl) {
    }
    
}

