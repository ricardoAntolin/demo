//
//  RealmService.swift
//  MummyPages
//
//  Created by ricardo on 17/10/2018.
//  Copyright © 2018 Square1. All rights reserved.
//

import RealmSwift

public class RealmService<T: Object> {
  private let configuration: Realm.Configuration
  
  private var realm: Realm {
    return try! Realm(configuration: self.configuration)
  }
  
  public init() {
    self.configuration = Realm.Configuration(deleteRealmIfMigrationNeeded: true)
  }
  
  func findAll() -> Results<T> {
    return realm.objects(T.self)
  }
  
  func findById(_ id: Int) -> T? {
    return realm.object(ofType: T.self, forPrimaryKey: id)
  }
  
  func query(with predicate: NSPredicate,
             sortDescriptors: [NSSortDescriptor] = []) -> Results<T> {
    return realm.objects(T.self)
      .filter(predicate)
        .sorted(by: sortDescriptors.map(SortDescriptor.init))
  }
  
  func save(object: T) {
    save(objects: [object])
  }
  
  func save(objects: [T]) {
    try! realm.write {
      realm.add(objects, update: true)
    }
  }
  
  func delete(object: T) {
    delete(objects: [object])
  }
  
  func delete(objects: [T]) {
    try! realm.write {
      realm.delete(objects)
    }
  }
  
  func delete(objects: Results<T>) {
    try! realm.write {
      realm.delete(objects)
    }
  }
}
