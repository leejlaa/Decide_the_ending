//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let story0 = "You see a fork in the road."
    let choice1 = "Take a left."
    let choice2 = "Take a right."
    var storyBrain = StoryBrain()
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice2button: UIButton!
    @IBOutlet weak var choice1button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text=story0
        choice1button.setTitle(choice1, for: .normal)
        choice2button.setTitle(choice2, for: .normal)
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
        
    }
   
    func updateUI(){
        storyLabel.text = storyBrain.getStoryTitle()
        choice1button.setTitle(storyBrain.getChoice1(), for:.normal)
        choice2button.setTitle(storyBrain.getChoice2(), for:.normal)
    }
   
    
    

   
}

