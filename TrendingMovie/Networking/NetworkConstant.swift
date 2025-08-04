//
//  NetworkConstant.swift
//  TrendingMovie
//
//  Created by Arqam Owais on 05/08/2025.
//

import Foundation

final class NetworkConstant {
    
    static var shared: NetworkConstant = NetworkConstant()
    
    private init() {
        // It is singleton
    }
    
    let apiKey: String = "e17afa9cf0de728fdfe669f3d6bfbb70"
    let baseURLSring: String = "https://api.themoviedb.org/"
    let imageServerURLString: String = "https://image.tmdb.org/t/p/x500/"
    let trendingMoviesEndpoint: String = "3/trending/all/day?api_key="
    
}
