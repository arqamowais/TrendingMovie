//
//  TrendingMoviesAPIClient.swift
//  TrendingMovie
//
//  Created by Arqam Owais on 05/08/2025.
//

import Foundation

final class TrendingMoviesAPIClient {
    
    static func getTrendingMovies(completion: @escaping (Result<TrendingMovieModel, NetworkError>) -> Void) {
        let urlString: String = NetworkConstant.shared.baseURLSring +
        NetworkConstant.shared.trendingMoviesEndpoint +
        NetworkConstant.shared.apiKey
        
        guard let url = URL(string: urlString) else {
            completion(.failure(.invalidURL))
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            // Handle network error
            if let error = error {
                completion(.failure(.transportError(error)))
                return
            }
            // Check if data exists
            guard let data = data else {
                completion(.failure(.noData))
                return
            }
            
            // Decode the response
            do {
                let model = try? JSONDecoder().decode(TrendingMovieModel.self, from: data)
                completion(.success(model!))
            } catch {
                completion(.failure(.invalidModelParsing))
            }
            
        }.resume()
    }

}
