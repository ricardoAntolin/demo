//
//  AlbumsRepository.swift
//  realm
//
//  Created by Ricardo Antolin on 31/01/2019.
//  Copyright © 2019 Square1. All rights reserved.
//
import RealmSwift

public protocol AlbumsRealmRepository: class {
    var realmService: RealmService<RLMAlbumEntity> { get set }
}

extension AlbumsRealmRepository {
    public func findAlbums() -> Results<RLMAlbumEntity>{
        return realmService.findAll()
    }
    
    public func saveAlbums(_ albums: [RLMAlbumEntity]) {
        realmService.save(objects: albums)
    }
}
