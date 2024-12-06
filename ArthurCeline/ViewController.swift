//
//  ViewController.swift
//  ArthurCeline
//
//  Created by prk on 06/12/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var backgroundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundView.roundedCorners([.topLeft], radius: 3/0)
    }
    

    @IBAction func LoginButton(_ sender: Any) {
        
        if usernameTextField.text?.isEmpty ?? true
        {
            print("nothing")
            alert(test: "Username Empty")
            
        }
        
        if passwordTextField.text?.isEmpty ?? true
        {
            print("nothing")
            alert(test: "Password Empty")
            
        }
        
        alert2()
        
        
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

extension UIView {
    
    func roundedCorners(_ corners: UIRectCorner, radius: CGFloat) {
        if #available(iOS 11, *) {
            var cornerMask = CACornerMask()
            if(corners.contains(.topLeft)){
                cornerMask.insert(.layerMinXMinYCorner)
                cornerMask.insert(.layerMaxXMinYCorner)
            }
            
            self.layer.cornerRadius = radius
            self.layer.maskedCorners = cornerMask
        } else {
            let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
            let mask = CAShapeLayer()
            mask.path = path.cgPath
            self.layer.mask = mask
        }
    }
    
}
