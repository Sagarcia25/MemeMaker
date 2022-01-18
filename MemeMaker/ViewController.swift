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
    
    let captionArrays = CaptionArrays()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topSegmentedControl.removeAllSegments()
        bottomSegmentedControl.removeAllSegments()
        for choice in captionArrays.topChoices{
            topSegmentedControl.insertSegment(withTitle: choice.emoji, at: captionArrays.topChoices.count, animated: false)
        }
        
        for choice in captionArrays.bottomChoices{
            bottomSegmentedControl.insertSegment(withTitle: choice.emoji, at: captionArrays.bottomChoices.count, animated: false)
        }
        bottomSegmentedControl.selectedSegmentIndex = 0
        topSegmentedControl.selectedSegmentIndex = 0
        updateUI()
    }

    @IBAction func segmentedValueChanged(_ sender: UISegmentedControl) {
        updateUI()
    }
    
    func updateUI(){
        topLabel.text = captionArrays.topChoices[topSegmentedControl.selectedSegmentIndex].caption
        bottomLabel.text = captionArrays.bottomChoices[bottomSegmentedControl.selectedSegmentIndex].caption
    }
    
    @IBAction func dragTopLabel(_ sender: UIPanGestureRecognizer) {
        if sender.state == .changed{
            topLabel.center = sender.location(in: view)
        }
    }
    
    @IBAction func dragBottomLabel(_ sender: UIPanGestureRecognizer) {
        if sender.state == .changed{
            bottomLabel.center = sender.location(in: view)
        }
    }
}

