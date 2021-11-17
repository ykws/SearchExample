//
//  ViewController.swift
//  SearchExample
//
//  Created by KAWASHIMA Yoshiyuki on 2021/11/17.
//

import UIKit

class ViewController: UITableViewController {
    
    private let items: [String] = [
        "C",
        "C++",
        "C#",
        "Objective-C",
        "Java",
        "JavaScript",
        "Perl",
        "PHP",
        "Ruby",
        "Rust",
        "Python",
        "Go",
        "Swift",
        "Kotlin",
    ]
    
    private var searchController: UISearchController!
    private var resultController: ResultViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        definesPresentationContext = true
        
        resultController = ResultViewController()
        
        navigationItem.hidesSearchBarWhenScrolling = false
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        searchController = UISearchController(searchResultsController: resultController)
        
        searchController.hidesNavigationBarDuringPresentation = true
        searchController.searchResultsUpdater = self
        
        if let obscuresBackgroundDuringPresentation = SettingsItemStore.shared.valueOf("obscuresBackgroundDuringPresentation") {
            searchController.obscuresBackgroundDuringPresentation = obscuresBackgroundDuringPresentation
        }
       
        //
        // Dare to use deprecated property
        // If support iOS12 and earlier, the following code.
        //
        // if #available(iOS 13.0, *) {
        //     searchController.obscuresBackgroundDuringPresentation = false
        // } else {
        //     searchController.dimsBackgroundDuringPresentation = false
        // }
        //
        
        if let dimsBackgroundDuringPresentation = SettingsItemStore.shared.valueOf("dimsBackgroundDuringPresentation") {
            searchController.dimsBackgroundDuringPresentation = dimsBackgroundDuringPresentation
        }
       
        navigationItem.searchController = searchController
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = item
        return cell
    }
}

extension ViewController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        if let keyword = searchController.searchBar.text, !keyword.isEmpty {
            resultController.items = items.filter { $0.contains(keyword) }
        } else {
            resultController.items = []
        }
    }
}
