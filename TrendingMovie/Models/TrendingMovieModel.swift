//
//  TrendingMovieModel.swift
//  TrendingMovie
//
//  Created by Arqam Owais on 05/08/2025.
//

import Foundation

struct TrendingMovieModel: Codable {
    let page: Int
    let movies: [MovieModel]
    let totalPages, totalResults: Int
    
    enum CodingKeys: String, CodingKey {
        case page
        case movies = "results"
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}
