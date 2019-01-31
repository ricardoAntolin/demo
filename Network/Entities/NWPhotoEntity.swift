//
//  NWPhotoEntity.swift
//  network
//
//  Created by Ricardo Antolin on 31/01/2019.
//  Copyright © 2019 Square1. All rights reserved.
//

public struct NWPhotoEntity: Codable {
    public let userId: Int
    public let id: Int
    public let title: String
    public let url: String
    public let thumbnailUrl: String
}
