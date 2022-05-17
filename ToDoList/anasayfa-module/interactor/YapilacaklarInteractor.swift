//
//  YapilacaklarInteractor.swift
//  ToDoList
//
//  Created by Azra Kaya on 16.05.2022.
//

import Foundation

class YapilacaklarInteractor : PresenterToInteractorYapilacaklarProtocol {

    var yapilacaklarPresenter: InteractorToPresenterYapilacaklarProtocol?
    
    //veritabanına bağlanmamız ve yetki almamız gerek
    let db:FMDatabase?
    //bu sınıftan nesne oluşturulduğu anda çalıştırma metodudur init
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("todoliste.sqlite")
        //veritabanı yetkisi alma
        db = FMDatabase(path: veritabaniURL.path)
    }
    
    func tumYapilacaklar() {
        //veritabanı bağlantısını açıyoruz
        db?.open()
        
        var liste = [Yapilacaklar]()
        
        do{
            //sql sorgu çalıştıracaksak executeQuery
            let rs = try db!.executeQuery("SELECT * FROM yapilacaklar", values: nil)
       
            //bir sonraki satırda kayıt var mı kontrolü
           while rs.next(){
                let yapilacakIs = Yapilacaklar(yapilacak_id: Int(rs.string(forColumn: "yapilacak_id"))!, yapilacak_is: rs.string(forColumn: "yapilacak_is")!)
                liste.append(yapilacakIs)
            }
            yapilacaklarPresenter?.presenteraVeriGonder(yapilacaklarListesi: liste)
        }catch{
            print(error.localizedDescription) //veritabanında hata olduğunda mesaj vermesi için
        }
        //veritabanı bağlantısını kapama
        db?.close()
    }
    
    func yapilacakAra(aramaKelimesi: String) {
        db?.open()
                var liste = [Yapilacaklar]()
                do {
                    let rs = try db!.executeQuery("SELECT * FROM yapilacaklar WHERE yapilacak_is like '%\(aramaKelimesi)%'", values: nil)
                    while rs.next() {
                        let yapilacakIs = Yapilacaklar(yapilacak_id: Int(rs.string(forColumn: "yapilacak_id"))!, yapilacak_is: rs.string(forColumn: "yapilacak_is")!)
                        liste.append(yapilacakIs)
                    }
                    yapilacaklarPresenter?.presenteraVeriGonder(yapilacaklarListesi: liste)
                } catch {
                    print(error.localizedDescription)
                }
                db?.close()
    }
    
    func yapilacakSil(yapilacak_id: Int) {
        db?.open()
               do {
                   try db!.executeUpdate("DELETE FROM yapilacaklar WHERE yapilacak_id = ?", values: [yapilacak_id])
                   tumYapilacaklar()
               } catch {
                   print(error.localizedDescription)
               }
               db?.close()
    }
    
    
}
