//
//  YapilacaklarKayitProtocols.swift
//  ToDoList
//
//  Created by Azra Kaya on 16.05.2022.
//

import Foundation

//view->presenter->interactor

protocol ViewToPresenterYapilacaklarKayitProtocol {
    var yapilacakKayitInteractor:PresenterToInteractorYapilacaklarKayitProtocol? {get set}
    func ekle(yapilacak_is:String)
}

protocol PresenterToInteractorYapilacaklarKayitProtocol {
    func yapilacakEkle(yapilacak_is:String)
}

protocol PresenterToRouterYapilacaklarKayitProtocol {
    static func createModule(ref:YapilacaklarKayitVC)
}
