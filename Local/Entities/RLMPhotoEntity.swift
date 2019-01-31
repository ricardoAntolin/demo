//
//  RLMPhotoEntity.swift
//  realm
//
//  Created by Ricardo Antolin on 31/01/2019.
//  Copyright © 2019 Square1. All rights reserved.
//

import RealmSwift

public class RLMPhotoEntity: Object {
    public struct Keys {
        static let albumId = "albumId"
        static let id = "id"
        static let title = "title"
        static let url = "url"
        static let thumbnailUrl = "thumbnailUrl"
    }
    
    @objc dynamic public var userId: Int = 0
    @objc dynamic public var id: Int = 0
    @objc dynamic public var title: String = ""
    @objc dynamic public var url: String = ""
    @objc dynamic public var thumbnailUrl: String = ""
    
    override public class func primaryKey() -> String {
        return Keys.id
    }
    
}
