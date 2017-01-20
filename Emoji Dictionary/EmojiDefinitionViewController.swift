//
//  EmojiDefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by David Boles on 1/17/17.
//  Copyright © 2017 David Boles. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {

    @IBOutlet weak var categoryLbl: UILabel!
    @IBOutlet weak var birthdateLbl: UILabel!
    
    @IBOutlet weak var emojiLbl: UILabel!
    @IBOutlet weak var emojiDefLbl: UILabel!
    
    var emoji = Emoji()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLbl.text = emoji.stringEmoji
        birthdateLbl.text = "BirthYear: \(emoji.birthYear)"
        categoryLbl.text = "Category: \(emoji.category)"
        emojiDefLbl.text = emoji.definition
        
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
