//
//  ViewController.swift
//  uyariMesajlari
//
//  Created by MacBook Pro on 9.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passwordİki: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var mailTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
    }

    @IBAction func signUpTiklandi(_ sender: Any) {
        
        if mailTextField.text == "" {
            
          alertOluştur(titleGirdisi: "Hata!", messageGirdisi: "E-mail girilmedi")
            
        }else if passwordTextField.text == "" {
            alertOluştur(titleGirdisi: "Hata!", messageGirdisi: "Şifre girilmedi.")
           
        }else if passwordTextField.text != passwordİki.text {
            
            alertOluştur(titleGirdisi: "Hata!", messageGirdisi: "Şifre eşleşmedi.")
           
            
        }else {
            alertOluştur(titleGirdisi: "Başarılı!", messageGirdisi: "Kayıt oluşturma başarılı!")
        }
            
            
        }
    
    func alertOluştur(titleGirdisi: String, messageGirdisi: String){
        let uyariMesajı = UIAlertController(title: titleGirdisi, message: messageGirdisi , preferredStyle: UIAlertController.Style.alert)
        
        let okeyButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            print("Buton tıklandı")
            // Ok Butonuna tıklandığında olanlar
        }
        
        uyariMesajı.addAction(okeyButton)
        self.present(uyariMesajı, animated: true, completion: nil)
        
    }
      
    }
    
    


