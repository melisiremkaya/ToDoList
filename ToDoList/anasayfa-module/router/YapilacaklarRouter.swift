//
//  YapilacaklarRouter.swift
//  ToDoList
//
//  Created by Azra Kaya on 16.05.2022.
//

import Foundation

//yetkilendirme

class YapilacaklarRouter : PresenterToRouterYapilacaklarProtocol {
    static func createModule(ref: YapilacaklarVC) {
        let presenter = YapilacaklarPresenter()
        
        //View
        ref.yapilacaklarPresenterNesnesi = presenter
        
        //Presenter
        ref.yapilacaklarPresenterNesnesi?.yapilacaklarInteractor = YapilacaklarInteractor()
        ref.yapilacaklarPresenterNesnesi?.yapilacaklarView = ref
        
        //Interactor
        ref.yapilacaklarPresenterNesnesi?.yapilacaklarInteractor?.yapilacaklarPresenter = presenter
    }
}
