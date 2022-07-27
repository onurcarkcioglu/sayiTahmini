//
//  TahminEtVC.swift
//  SayiTahminEt
//
//  Created by Macbook on 22.07.2022.
//

import UIKit

class TahminEtVC: UIViewController {
    
    @IBOutlet weak var lblKalanHak: UILabel!
    
    @IBOutlet weak var lblYardim: UILabel!
    
    @IBOutlet weak var textfieldSayiGir: UITextField!
    
    var rastgeleSayi:Int?
    var kalanHak = 5
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rastgeleSayi = Int(arc4random_uniform(100))//0-100 rastgele sayı üretiyor
        print("Rastgele Sayı : \(rastgeleSayi!)")

       
    }
    
    //Geçişi dinlemek için kullanılan metod-Geçişi Sağlayarak karşıya veri gönderme
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let gelenVeri = sender as? Bool{
            let gidilecekVC = segue.destination as! SonucEkraniVC
            gidilecekVC.sonuc = gelenVeri
            
        }
        
    }
    
    @IBAction func tahminEt(_ sender: Any) {
        lblYardim.isHidden = false
        kalanHak-=1
        
      
        if let veri = textfieldSayiGir.text {
            
            if let tahmin = Int(veri) {
                
                if kalanHak != 0 {
                    
                    if tahmin == rastgeleSayi! {
                        let sonuc = true
                        performSegue(withIdentifier: "tahminToSonuc", sender: sonuc)
                        
                    }
                    
                    if tahmin > rastgeleSayi! {
                        lblYardim.text = "Azalt"
                        lblKalanHak.text = "Kalan Hak : \(kalanHak)"
                        
                    }
                    
                    if tahmin < rastgeleSayi! {
                        lblYardim.text = "Arttır"
                        lblKalanHak.text = "Kalan Hak : \(kalanHak)"
                        
                    }
                    
                }else {
                    let sonuc = false
                    performSegue(withIdentifier: "tahminToSonuc", sender: sonuc)
                    
                    
                    
                }
                textfieldSayiGir.text = ""
                
            }
            
        }
        
    }
    
}
