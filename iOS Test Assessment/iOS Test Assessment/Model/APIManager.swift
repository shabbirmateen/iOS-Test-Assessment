//
//  APIManager.swift
//  iOS Test Assessment
//
//  Created by Shabbir Ahmad on 03/05/24.
//

import Foundation

enum DataError: Error {
    case invalidData
    case invalidResponse
    case message(_ error: Error?)
}

class APIManager {
    static let shared = APIManager()
    private init() { }
    
    func apiCall<T:Codable>(urlString:String, resultType: T.Type, completion: @escaping (Result<T?, Error>) -> Void) {
        if let url = URL(string: urlString,
                         encodingInvalidCharacters: true) {
            
            URLSession.shared.dataTask(with: url) { data, response, error in
                
                guard let data else {
                    completion(.failure(DataError.invalidData))
                    return
                }
                
                do {
                    let result = try JSONDecoder().decode(T.self, from: data)
                        completion(.success(result))
                }
                catch {
                    completion(.failure(DataError.message(error)))
                }
                
            }.resume()
            
        }
    }
}
