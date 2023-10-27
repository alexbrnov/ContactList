//
//  TabBarController.swift
//  ContactList
//
//  Created by Alexandr Baranov on 27.10.2023.
//


import UIKit

final class TabBarController: UITabBarController {
    
    let persons = Person.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let viewControllers = self.viewControllers {

            if let navigationController = viewControllers.first as? UINavigationController {
                 if let firstViewController = navigationController.topViewController as? PersonsTableViewController {
                     firstViewController.persons = persons
                 }
             }
            if let navigationController = viewControllers[1] as? UINavigationController {
                 if let secondViewController = navigationController.topViewController as? PersonsDetailsTableViewController {
                     secondViewController.persons = persons
                 }
             }
        }
    }
}


