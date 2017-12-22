//
//  ViewController.swift
//  Joseph-CS193P-iOS11-Lecture-1-Introduction-to-iOS11-XCode9-and-Swift4
//
//  Created by chenjian on 2017/12/22.
//  Copyright © 2017年 chenjian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Private Member
    
    private let emojis = ["陈", "健", "好", "人"]
    
    private var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    // MARK: - User Interface

    @IBOutlet weak var flipCountLabel: UILabel!
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton!) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender) {
            flipCard(withEmoji: emojis[cardNumber], on: sender)
        } else {
            print("Card not found!")
        }
    }
    
    // MARK: - Private Implementation
    
    private func flipCard(withEmoji emoji: String, on card: UIButton) {
            if card.currentTitle == nil {
                card.setTitle(emoji, for: UIControlState.normal)
                card.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            } else {
                card.setTitle(nil, for: UIControlState.normal)
                card.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
            }
    }
    
    // MARK: - View Controller Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        flipCount = 0
    }
}

