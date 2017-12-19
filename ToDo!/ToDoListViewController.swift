//
//  ViewController.swift
//  ToDo!
//
//  Created by Bonimoo on 19/12/2017.
//  Copyright © 2017 Bonimoo. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {

    
    
    let itemArray =  ["Learn", "Play The Guitar", "Play Chess"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return itemArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell")
        
        cell?.textLabel?.text = itemArray[indexPath.row]
        
        return cell!
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
            tableView.cellForRow(at: indexPath)?.accessoryType = .none

        }else{
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }

    }
}

