//
//  SonucEkraniVC.swift
//  SayiTahminEt
//
//  Created by Macbook on 22.07.2022.
//

import UIKit

class SonucEkraniVC: UIViewController {
    
    
    @IBOutlet weak var imageViewSonuc: UIImageView!
    
    @IBOutlet weak var lblSonuc: UILabel!
    
   var sonuc:Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true
        self.navigationItem.title = "Sonu. Ekranı"

     print(sonuc!)
        
        if sonuc! {
            lblSonuc.text = "Kazandınız"
            imageViewSonuc.image = UIImage(named: "mutluResim")
            
            
        }else{
            lblSonuc.text = "Kaybettiniz"
            imageViewSonuc.image = UIImage(named: "uzgunResim")
            
        }
        
        
    }
    
    @IBAction func tekrarOyna(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
        
        
    }
    
    

}
