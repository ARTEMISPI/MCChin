//
//  munchkinViewController.swift
//  MCChin
//
//  Created by Artemis Papunidis on 6/19/20.
//  Copyright © 2020 PAPUNIDIS DEVELOPMENT. All rights reserved.
//

import UIKit

class munchkinViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
 //MARK: INITIALIZATION
    
    override func viewDidLoad() {
           super.viewDidLoad()
           // клавиатура убирается
                  self
                      .hideKeyboardWhenTappedAround()
       }
    
    //Создание Table View
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return munchkinPlayers.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "munchkinPlayer", for: indexPath)
        cell.textLabel?.text = munchkinPlayers[indexPath.row]
        return cell
        
    }
    
    //Редактирование Table View
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
           return true
       }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
           if editingStyle == .delete {
               removePlayer(at: indexPath.row)
               tableView.deleteRows(at: [indexPath], with: .fade)
           } else if editingStyle == .insert {
               
           }
       }
    
    // Сохранение данных
    func saveData (){
        UserDefaults.standard.set(munchkinPlayers, forKey: "DPKey")
        UserDefaults.standard.synchronize()
    }


    // Загрузка данных
    func loadData(){
        if let array = UserDefaults.standard.array(forKey: "DPKey") as? [String] {
            munchkinPlayers = array
        } else {
            munchkinPlayers = []
        }
    }
    // Удаление игрока
    func removePlayer(at index: Int) {
           munchkinPlayers.remove(at: index)
           saveData()
       }
    
}


// MARK: EXTENSIONS
