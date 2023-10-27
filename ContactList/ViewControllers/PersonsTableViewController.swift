//
//  PersonsTableViewController.swift
//  ContactList
//
//  Created by Alexandr Baranov on 27.10.2023.
//

import UIKit

final class PersonsTableViewController: UITableViewController {
    
    var persons: [Person]!
    
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showInfo" {
            guard
                let infoVC = segue.destination as? InfoViewController,
                let selectedIndexPath = tableView.indexPathForSelectedRow,
                selectedIndexPath.row < persons.count
            else { return }
            
            let selectedPerson = persons[selectedIndexPath.row]
            infoVC.person = selectedPerson
        }
    }
}

// MARK: - UITableViewDataSource
extension PersonsTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = person.fullName
        
        cell.contentConfiguration = content
        return cell
    }
    
}
