//
//  PhotoRealmRepository.swift
//  realm
//
//  Created by Ricardo Antolin on 31/01/2019.
//  Copyright © 2019 Square1. All rights reserved.
//

import RealmSwift

public protocol PhotosRealmRepository: class {
    var realmService: RealmService<RLMPhotoEntity> { get set }
}

extension PhotosRealmRepository {
    public func findPhotosByAlbum(_ albumId: Int) -> Results<RLMPhotoEntity>{
        return realmService.query(
            with: NSPredicate(format: "%K == %@",
                              argumentArray: [RLMPhotoEntity.Keys.albumId, albumId]))
    }
    
    public func savePhotos(_ photos: [RLMPhotoEntity]) {
        realmService.save(objects: photos)
    }
}
