//
//  APIManager.swift
//  project-ios
//
//  Created by User on 22.04.2022.
//  Copyright © 2022 viktoriya. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseStorage
import FirebaseDatabase

class APIManager{
    

    static let  shared = APIManager()
    private func configureFB() -> Firestore {
        var db: Firestore!
        let settings = FirestoreSettings()
        Firestore.firestore().settings = settings
        db = Firestore.firestore()
        return db
    }
    
    func getPost(id: String, imageID: String, completion: @escaping (Post?) -> Void) {
// замыкания - почти как функции, которые могут быть переданы в качестве аргумента в другие функции
//@escaping - замыкание используется после выполнения тела функции и находится в памяти пока не выполнится
        let db = configureFB()
        db.collection("posts").document(id).getDocument() { (document, error) in guard error == nil else {completion(nil); return}
//guard выполняет код только в случае false
// nil - пустое значение
            self.getImage(id: imageID, completion: {image in
                let post = Post(name: document?.get("name") as! String, date: document?.get("date") as! String, text: document?.get("text") as! String, image: image)
                completion(post)
            })
            }
    }

    func getImage(id:String, completion: @escaping(UIImage) -> Void){
        let storage = Storage.storage()
        let reference = storage.reference()
        let pathRef = reference.child("pictures")
        var image: UIImage = UIImage(named: "chat")!
        let fileRef = pathRef.child(id + ".jpg")
        fileRef.getData(maxSize: 1024*1024, completion: {data, error in guard error == nil else { completion(image); return}
            image = UIImage(data: data!)!
            completion(image)
        })
    }
    
}

struct Post{
    let name: String
    let date: String
    let text: String
    let image: UIImage
}
