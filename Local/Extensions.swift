//
//  MappingExtensions.swift
//  MummyPages
//
//  Created by ricardo on 18/10/2018.
//  Copyright © 2018 Square1. All rights reserved.
//
import Foundation
import RealmSwift

extension Object {
  public static func build<O: Object>(_ builder: (O) -> () ) -> O {
    let object = O()
    builder(object)
    return object
  }
}

extension SortDescriptor {
  public init(sortDescriptor: NSSortDescriptor) {
    self.init(keyPath: sortDescriptor.key ?? "", ascending: sortDescriptor.ascending)
  }
}
