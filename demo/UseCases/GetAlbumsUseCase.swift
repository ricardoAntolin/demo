//
//  GetAlbumsUseCase.swift
//  demo
//
//  Created by Ricardo Antolin on 31/01/2019.
//  Copyright © 2019 Square1. All rights reserved.
//

import Network
import Local
import RealmSwift

final class GetAlbumsUseCase: AlbumsRealmRepository, AlbumsNetworkRepository {
    var realmService: RealmService<RLMAlbumEntity>
    var baseUrl: String
    
    init(baseUrl: String,
         realmService: RealmService<RLMAlbumEntity>){
        self.baseUrl = baseUrl
        self.realmService = realmService
    }
    
    func execute() -> Results<RLMAlbumEntity>{
        getAlbums { result in
            switch result{
            case .success(let albums):
                self.saveAlbums(albums.map{ self.mapToRealmEntity($0) })
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        
        return findAlbums()
    }
    
    func mapToRealmEntity(_ album: NWAlbumEntity) -> RLMAlbumEntity{
        return RLMAlbumEntity.build{ object in
            object.userId = album.userId
            object.id = album.id
            object.title = album.title
        }
    }
}
