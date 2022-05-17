//
//  YapilacaklarKayitRouter.swift
//  ToDoList
//
//  Created by Azra Kaya on 16.05.2022.
//

import Foundation

class YapilacaklarKayitRouter : PresenterToRouterYapilacaklarKayitProtocol{
    static func createModule(ref: YapilacaklarKayitVC) {
        //yetkilendirme
        ref.yapilacakKayitPresenterNesnesi = YapilacaklarKayitPresenter()
        ref.yapilacakKayitPresenterNesnesi?.yapilacakKayitInteractor = YapilacaklarKayitInteractor()
    }
}
