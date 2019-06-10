//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Magzhan Imangazy on 07/11/2018.
//  Copyright © 2018 Magzhan Imangazy . All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        
        try! realm.write {
            realm.add(place)
        }
    }
    
    static func deleteObject(_ place: Place) {
        
        try! realm.write {
            realm.delete(place)
        }
    }
}
