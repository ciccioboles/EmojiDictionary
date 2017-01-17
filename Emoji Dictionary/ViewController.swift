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
    
    var emojiArray = ["🦄","🍒","🍔","🐬","💾","📬","🌵"]
    
    override func viewDidLoad() {
        super.viewDidLoad()


        emojiTableView.dataSource = self
        emojiTableView.delegate = self
        
        
    }//

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojiArray[indexPath.row]
        return cell
        
            }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let selectedEmoji = emojiArray[indexPath.row]
        performSegue(withIdentifier: "toEmojiDetailSegue", sender: selectedEmoji)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! EmojiDefinitionViewController
        defVC.emoji = sender as! String 
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}//

