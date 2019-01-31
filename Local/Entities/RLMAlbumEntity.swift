//
//  RLMAlbumEntity.swift
//  realm
//
//  Created by Ricardo Antolin on 31/01/2019.
//  Copyright © 2019 Square1. All rights reserved.
//

import RealmSwift

public class RLMAlbumEntity: Object {
    public struct Keys {
        public static let uiserId = "uiserId"
        public static let id = "id"
        public static let title = "title"
    }
    
    @objc dynamic public var userId: Int = 0
    @objc dynamic public var id: Int = 0
    @objc dynamic public var title: String = ""
    
    override public class func primaryKey() -> String {
        return Keys.id
    }
}


