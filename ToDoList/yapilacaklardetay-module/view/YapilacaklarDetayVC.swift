//
//  YapilacaklarDetayVC.swift
//  ToDoList
//
//  Created by Azra Kaya on 15.05.2022.
//

import UIKit

class YapilacaklarDetayVC: UIViewController {

    @IBOutlet weak var textFieldDetay: UITextField!
    
    var yapilacak:Yapilacaklar?
    var yapilacakDetayPresenterNesnesi:ViewToPresenterYapilacaklarDetayProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let y = yapilacak {
            textFieldDetay.text = y.yapilacak_is
        }
        
        YapilacaklarDetayRouter.createModule(ref: self)
    }
    
    //viewWillAppear -> her açıldığında çalışır
    //viewDidLoad -> sayfa açıldığında ilk açıldığında çalışır

    @IBAction func buttonGuncelle(_ sender: Any) {
        
        if let yi = textFieldDetay.text, let y = yapilacak {
            yapilacakDetayPresenterNesnesi?.guncelle(yapilacak_id: y.yapilacak_id!, yapilacak_is: yi)
        }
    }
}
