//
//  NetworkError.swift
//  TrendingMovie
//
//  Created by Arqam Owais on 05/08/2025.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case transportError(Error)
    case noData
    case invalidModelParsing
}
