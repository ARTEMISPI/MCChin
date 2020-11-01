//
//  Database.swift
//  MCChin
//
//  Created by Artemis Papunidis on 7/5/20.
//  Copyright © 2020 PAPUNIDIS DEVELOPMENT. All rights reserved.
//

import Foundation
import RealmSwift

struct Games {
    let a = "Munchkin"
    let b = "Monopoly"
    let c = "Mafia"
}

//var gamesVariables: [String] = ["Munchkin, Monopoly, Mafia"]

var munchkinPlayers: [String] = [""]

struct Players {
    var Players: [String] = [""]
}

//try! realm.write {
//       Realm.add(Players)
//   }
