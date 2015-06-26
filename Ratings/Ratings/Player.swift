//
//  Player.swift
//  Ratings
//
//  Created by Raul Ernesto Escobedo Herrera on 6/24/15.
//  Copyright (c) 2015 Raul Ernesto Escobedo Herrera. All rights reserved.
//

import Foundation
import UIKit

class Player: NSObject {
    var name: String
    var game: String
    var rating: Int
    
    init(name: String, game: String, rating: Int) {
        self.name = name
        self.game = game
        self.rating = rating
        super.init()
    }
}