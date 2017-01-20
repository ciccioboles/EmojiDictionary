//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by David Boles on 1/16/17.
//  Copyright © 2017 David Boles. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var emojiTableView: UITableView!
    
    var emojiArray: [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()


        emojiTableView.dataSource = self
        emojiTableView.delegate = self
        emojiArray = makeEmojiArray()
        
    }//

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojiArray[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
        
            }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let selectedEmoji = emojiArray[indexPath.row]
        performSegue(withIdentifier: "toEmojiDetailSegue", sender: selectedEmoji)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! EmojiDefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    func makeEmojiArray() -> [Emoji] {
        
        let emoji1 = Emoji()
        emoji1.stringEmoji = "🦄"
        emoji1.birthYear = 2010
        emoji1.category = "Animal emoji"
        emoji1.definition = "It's a cute unicorn!"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🍒"
        emoji2.birthYear = 2009
        emoji2.category = "Food emoji"
        emoji2.definition = "It's a couple of cherries."
       
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🍔"
        emoji3.birthYear = 2013
        emoji3.category = "Food emoji"
        emoji3.definition = "It's a juicy cheeseburger."

        let emoji4 = Emoji()
        emoji4.stringEmoji = "🐬"
        emoji4.birthYear = 2014
        emoji4.category = "Animal emoji"
        emoji4.definition = "It's a blue dolphin."

        let emoji5 = Emoji()
        emoji5.stringEmoji = "💾"
        emoji5.birthYear = 2013
        emoji5.category = "Things emoji"
        emoji5.definition = "It's a cool old floppy disk."
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "📬"
        emoji6.birthYear = 2009
        emoji6.category = "Things emoji"
        emoji6.definition = "It's a mailbox with a letter in it."
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "🌵"
        emoji7.birthYear = 2013
        emoji7.category = "Things emoji"
        emoji7.definition = "It's a green cactus."
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "🌩"
        emoji8.birthYear = 20015
        emoji8.category = "Weather emoji"
        emoji8.definition = "It's a cloud with lightning."
        
        
        
        return [emoji1,emoji2,emoji3,emoji4,emoji5,emoji6,emoji7,emoji8]
        
        
    }
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  //comment added

}//

