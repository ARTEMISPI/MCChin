//
//  GamesViewController.swift
//  MCChin
//
//  Created by Artemis Papunidis on 4/23/20.
//  Copyright © 2020 PAPUNIDIS DEVELOPMENT. All rights reserved.
//

import UIKit

class GamesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //MARK: INITIALIZATION
    override func viewDidLoad() {
           super.viewDidLoad()
       }
    
    @IBOutlet weak var gamesTableView: UITableView!
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 3
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gamesVariables.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let gamesCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        gamesCell.textLabel?.text = gamesVariables[indexPath.row]
        return gamesCell
    }
    
    // Сохранение данных
//    func saveData (){
//    UserDefaults.standard.set(gamesVariables, forKey: "DPKey")
//    UserDefaults.standard.synchronize()
//    }


    // Загрузка данных
//    func loadData(){
//    if let array = UserDefaults.standard.array(forKey: "DPKey") as? [String] {
//        gamesVariables = array
//    } else {
//        gamesVariables = []
//    }
//    }
    
    //MARK: CONNECTIONS
    
}
