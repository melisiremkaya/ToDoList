//
//  YapilacaklarKayitVC.swift
//  ToDoList
//
//  Created by Azra Kaya on 15.05.2022.
//

import UIKit

class YapilacaklarKayitVC: UIViewController {

    
    @IBOutlet weak var textFieldYapilacakIs: UITextField!
    
    var yapilacakKayitPresenterNesnesi : ViewToPresenterYapilacaklarKayitProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        YapilacaklarKayitRouter.createModule(ref: self)

    }

    @IBAction func buttonEkle(_ sender: Any) {
        
        if let yi = textFieldYapilacakIs.text {
            yapilacakKayitPresenterNesnesi?.ekle(yapilacak_is: yi)
        }
    }
    
}
