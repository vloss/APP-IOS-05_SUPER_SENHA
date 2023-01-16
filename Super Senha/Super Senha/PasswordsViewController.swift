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
    
    var passwordGenerator: PasswordGenerator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // alterando o title da view
        title = "Total de Senhas: \(numberOfPasswords)"
        
        passwordGenerator = PasswordGenerator(numberOfCharacters: numberOfCharacters, useLetters: useLetters, useNumbers: useNumbers, useCapitalLetters: useCapitalLetters, useSpecialCharacters: useSpecialCharacters)

        generatePasswords()
    }
    
    func generatePasswords() {
        
        // rolagem de scroll do textview para o top
        tvPasswords.scrollRangeToVisible(NSRange(location: 0, length: 0 ))
        tvPasswords.text = ""
        
        let passwords = passwordGenerator.generate(total: numberOfPasswords)
        
        for password in passwords {
            tvPasswords.text.append(password + "\n\n")
        }
    }

    @IBAction func generate(_ sender: UIButton) {
        generatePasswords()
    }
}
