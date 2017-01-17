//
//  EmojiDefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by David Boles on 1/17/17.
//  Copyright © 2017 David Boles. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {

    
    @IBOutlet weak var emojiLbl: UILabel!
    @IBOutlet weak var emojiDefLbl: UILabel!
    
    var emoji = "No Emoji"
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLbl.text = emoji
        
        if emoji == "🦄" {
        emojiDefLbl.text = "It's a cute unicorn!"
        } else if emoji == "🍒" {
            emojiDefLbl.text = "A couple of cherries."
        } else if emoji == "🍔" {
            emojiDefLbl.text = "A juicy cheeseburger!"
        }else if emoji == "🐬" {
            emojiDefLbl.text = "A blue dolphin."
        } else if emoji == "💾" {
            emojiDefLbl.text = "A cool old floppy disk."
        } else if emoji == "📬" {
            emojiDefLbl.text = "You've got mail!"
        } else if emoji == "🌵" {
            emojiDefLbl.text = "A big green cactus."

        }
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
