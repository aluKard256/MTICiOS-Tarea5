//
//  PlayerDetailsViewController.swift
//  Ratings
//
//  Created by Raul Ernesto Escobedo Herrera on 6/24/15.
//  Copyright (c) 2015 Raul Ernesto Escobedo Herrera. All rights reserved.
//

import UIKit

class PlayerDetailsViewController: UITableViewController {

    var player:Player!
    var game:String = "Chess"
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var detailLabel: UILabel!
    @IBAction func selectedGame(segue:UIStoryboardSegue) {
        if let gamePickerViewController = segue.sourceViewController as? GamePickerViewController,
            selectedGame = gamePickerViewController.selectedGame {
                detailLabel.text = selectedGame
                game = selectedGame
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailLabel.text = game
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section == 0 {
            nameTextField.becomeFirstResponder()
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SavePlayerDetail" {
            player = Player(name: nameTextField.text, game:game, rating: 1)
        }
        
        if segue.identifier == "PickGame" {
            if let gamePickerViewController = segue.destinationViewController as? GamePickerViewController {
                gamePickerViewController.selectedGame = game
            }
        }
    }
    
    
    
    required init(coder aDecoder: NSCoder) {
        println("init PlayerDetailsViewController")
        super.init(coder: aDecoder)
    }
    
    deinit {
        println("deinit PlayerDetailsViewController")
    }
}
