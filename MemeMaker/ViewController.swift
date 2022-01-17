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
    
    let topChoices = ["When you tell your dog to stop barking","When you tell your dog to fetch the toy","When you tell your dog time to eat"]
    let bottomChoices = ["The dog starts howling", "They get their toy and go to bed", "The dog takes your food away"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func segmentedValueChanged(_ sender: UISegmentedControl) {
    }
    
}

