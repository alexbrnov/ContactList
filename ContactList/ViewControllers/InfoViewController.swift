//
//  InfoViewController.swift
//  ContactList
//
//  Created by Alexandr Baranov on 27.10.2023.
//

import UIKit

final class InfoViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullName
        
        phoneLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
