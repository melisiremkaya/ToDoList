//
//  YapilacaklarPresenter.swift
//  ToDoList
//
//  Created by Azra Kaya on 16.05.2022.
//

import Foundation

//amacı interactordaki fonksiyonları çalıştırmak

class YapilacaklarPresenter : ViewToPresenterYapilacaklarProtocol {
    
    var yapilacaklarInteractor: PresenterToInteractorYapilacaklarProtocol?
    var yapilacaklarView: PresenterToViewYapilacaklarProtocol?
    
    func tumYapilacaklariYukle() {
        yapilacaklarInteractor?.tumYapilacaklar()
    }
    
    func ara(aramaKelimesi: String) {
        yapilacaklarInteractor?.yapilacakAra(aramaKelimesi: aramaKelimesi)
    }
    
    func sil(yapilacak_id: Int) {
        yapilacaklarInteractor?.yapilacakSil(yapilacak_id: yapilacak_id)
    }
}

extension YapilacaklarPresenter : InteractorToPresenterYapilacaklarProtocol {
    func presenteraVeriGonder(yapilacaklarListesi: Array<Yapilacaklar>) {
        yapilacaklarView?.vieweVeriGonder(yapilacaklarListesi: yapilacaklarListesi)
    }
}
