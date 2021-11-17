//
//  SettingsViewController.swift
//  SearchExample
//
//  Created by KAWASHIMA Yoshiyuki on 2021/11/17.
//

import UIKit

class SettingsViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "SettingsCell")
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingsItemStore.shared.items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = SettingsItemStore.shared.items[indexPath.row]
        
        //
        // style .subtitle not working
        //
        // let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsCell", for: indexPath)
        //
        
        let cell = UITableViewCell.init(style: .subtitle, reuseIdentifier: "SettingsCell")
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = item.state.description
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        SettingsItemStore.shared.items[indexPath.row].nextState()
        tableView.deselectRow(at: indexPath, animated: true)
        tableView.reloadData()
    }
}
