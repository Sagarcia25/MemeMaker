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
    
    
    
    let topChoices = [
        CaptionOption(emoji: "🐕", caption: "When you tell your dog to stop barking"),
        CaptionOption(emoji: "🧸", caption: "When you tell your dog to fetch the toy"),
        CaptionOption(emoji: "🍗", caption: "When you tell your dog time to eat")
                    ]
    
    let bottomChoices = [
        CaptionOption(emoji: "😭", caption: "The dog starts howling instead"),
        CaptionOption(emoji: "📱", caption: "They take your phone awy from your hand"),
        CaptionOption(emoji: "🌮", caption: "The dog takes your food away")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topSegmentedControl.removeAllSegments()
        bottomSegmentedControl.removeAllSegments()
        for choice in topChoices{
            topSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        
        for choice in bottomChoices {
            bottomSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        bottomSegmentedControl.selectedSegmentIndex = 0
        topSegmentedControl.selectedSegmentIndex = 0
        updateUI()
    }

    @IBAction func segmentedValueChanged(_ sender: UISegmentedControl) {
        updateUI()
    }
    
    func updateUI(){
        topLabel.text = topChoices[topSegmentedControl.selectedSegmentIndex].caption
        bottomLabel.text = bottomChoices[bottomSegmentedControl.selectedSegmentIndex].caption
    }
}

