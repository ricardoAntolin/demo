//
//  GetPhotosOfPhotoUseCase.swift
//  demo
//
//  Created by Ricardo Antolin on 31/01/2019.
//  Copyright © 2019 Square1. All rights reserved.
//

import Network
import Local
import RealmSwift

final class GetPhotosUseCase: PhotosRealmRepository, PhotosNetworkRepository {
    var realmService: RealmService<RLMPhotoEntity>
    var baseUrl: String
    
    init(baseUrl: String,
         realmService: RealmService<RLMPhotoEntity>){
        self.baseUrl = baseUrl
        self.realmService = realmService
    }
    
    func execute(albumId: Int) -> Results<RLMPhotoEntity>{
        getPhotos (albumId: albumId, completion: { result in
            switch result{
            case .success(let albums):
                self.savePhotos(albums.map{ self.mapToRealmEntity($0) })
            case .failure(let error):
                print(error.localizedDescription)
            }
        })
        return findPhotosByAlbum(albumId)
    }
    
    func mapToRealmEntity(_ photo: NWPhotoEntity) -> RLMPhotoEntity{
        return RLMPhotoEntity.build{ object in
            object.userId = photo.userId
            object.id = photo.id
            object.title = photo.title
            object.url = photo.url
            object.thumbnailUrl = photo.thumbnailUrl
        }
    }
}

