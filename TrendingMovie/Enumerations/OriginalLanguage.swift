//
//  OriginalLanguage.swift
//  TrendingMovie
//
//  Created by Arqam Owais on 05/08/2025.
//

import Foundation

enum OriginalLanguage: String, Codable {
    case en, ja, zh, unknown
    
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try? container.decode(String.self)
        self = OriginalLanguage(rawValue: value ?? "") ?? .unknown
    }
}
