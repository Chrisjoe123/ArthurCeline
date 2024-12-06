//
//  RegisterController.swift
//  ArthurCeline
//
//  Created by prk on 06/12/24.
//

import UIKit

class RegisterController : UIViewController{
    
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    
    @IBOutlet weak var password: UITextField!
    
    
    @IBAction func Register(_ sender: Any) {
        
        if username.text?.isEmpty ?? true
        {
            alert(test: "Username Empty")
        }
        
        if email.text?.isEmpty ?? true
        {
            alert(test: "Email Empty")
        }
        
        if password.text?.isEmpty ?? true
        {
            alert(test: "Password is Empty")
        }
        
        alert2()
        
    }
    
    override func viewDidLoad() {
        
    }
    
    func alert2(){
        let panzer = UIAlertController(title: "Login Successfull", message: "Successfull", preferredStyle: .alert)
        panzer.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(panzer, animated: true, completion: nil)
        return
    }
    
    func alert(test : String)
    {
        let panzer = UIAlertController(title: "Invalid Data", message: test, preferredStyle: .alert)
        panzer.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(panzer, animated: true, completion: nil)
        return
    }
}
