//
//  AlbumNetworkRepository.swift
//  network
//
//  Created by Ricardo Antolin on 31/01/2019.
//  Copyright © 2019 Square1. All rights reserved.
//

import Alamofire

public protocol AlbumsNetworkRepository: class {
    var baseUrl: String { get set }
}

extension AlbumsNetworkRepository {
    public func getAlbums(completion: @escaping (Result<[NWAlbumEntity]>)->Void){
        AF.request("\(baseUrl)/albums")
            .responseDecodable { (response: DataResponse<[NWAlbumEntity]>) in
                completion(response.result)
        }
    }
}
