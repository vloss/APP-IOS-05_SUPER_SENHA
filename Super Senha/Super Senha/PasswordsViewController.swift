//
//  PasswordsViewController.swift
//  Super Senha
//
//  Created by Vinicius Loss on 15/01/23.
//

import UIKit

class PasswordsViewController: UIViewController {

    @IBOutlet weak var tvPasswords: UITextView!
    
    var numberOfCharacters: Int = 10
    var numberOfPasswords: Int = 1
    var useLetters: Bool!
    var useNumbers: Bool!
    var useCapitalLetters: Bool!
    var useSpecialCharacters: Bool!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func generate(_ sender: UIButton) {
    }
}
