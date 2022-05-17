//
//  YapilacaklarDetayPresenter.swift
//  ToDoList
//
//  Created by Azra Kaya on 16.05.2022.
//

import Foundation

class YapilacaklarDetayPresenter : ViewToPresenterYapilacaklarDetayProtocol {
    
    var yapilacakDetayInteractor: PresenterToInteractorYapilacaklarDetayProtocol?
    
    func guncelle(yapilacak_id: Int, yapilacak_is: String) {
        yapilacakDetayInteractor?.yapilacakGuncelle(yapilacak_id: yapilacak_id, yapilacak_is: yapilacak_is)
    }
}
