//
//  YapilacaklarDetayRouter.swift
//  ToDoList
//
//  Created by Azra Kaya on 16.05.2022.
//

import Foundation

class YapilacaklarDetayRouter : PresenterToRouterYapilacaklarDetayProtocol {
    static func createModule(ref: YapilacaklarDetayVC) {
        //yetki verme
        ref.yapilacakDetayPresenterNesnesi = YapilacaklarDetayPresenter()
        ref.yapilacakDetayPresenterNesnesi?.yapilacakDetayInteractor = YapilacaklarDetayInteractor()
    }
}
