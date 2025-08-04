//
//  MediaType.swift
//  TrendingMovie
//
//  Created by Arqam Owais on 05/08/2025.
//

import Foundation

enum MediaType: String, Codable {
    case movie
    case tv
    case unknown
    
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try? container.decode(String.self)
        self = MediaType(rawValue: value ?? "") ?? .unknown
    }
}
