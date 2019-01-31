//
//  PhotoNetworkRepository.swift
//  network
//
//  Created by Ricardo Antolin on 31/01/2019.
//  Copyright © 2019 Square1. All rights reserved.
//

import Alamofire

public protocol PhotosNetworkRepository: class {
    var baseUrl: String { get set }
}

extension PhotosNetworkRepository {
    public func getPhotos(albumId: Int, completion: @escaping (Result<[NWPhotoEntity]>)->Void){
        AF.request("\(baseUrl)/photos/\(albumId)")
            .responseDecodable { (response: DataResponse<[NWPhotoEntity]>) in
                completion(response.result)
        }
    }
}
