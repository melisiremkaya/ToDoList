//
//  YapilacaklarDetayProtocols.swift
//  ToDoList
//
//  Created by Azra Kaya on 16.05.2022.
//

import Foundation
//view->presenter->interactor
protocol ViewToPresenterYapilacaklarDetayProtocol {
    var yapilacakDetayInteractor:PresenterToInteractorYapilacaklarDetayProtocol? {get set}
    func guncelle(yapilacak_id:Int, yapilacak_is:String)
}

protocol PresenterToInteractorYapilacaklarDetayProtocol {
    func yapilacakGuncelle(yapilacak_id:Int, yapilacak_is:String)
}

protocol PresenterToRouterYapilacaklarDetayProtocol {
    static func createModule(ref:YapilacaklarDetayVC)
}
