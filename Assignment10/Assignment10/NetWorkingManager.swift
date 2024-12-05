//
//  NetWorkingManager.swift
//  Assignment10
//
//  Created by Джан Влад on 05.12.2024.
//

import Foundation

class NetworkingManager {
    static let shared = NetworkingManager()
    private let apiURL = "https://akabab.github.io/superhero-api/api/all.json"
    
    func fetchSuperheroes(completion: @escaping (Result<[Superhero], Error>) -> Void) {
        guard let url = URL(string: apiURL) else {
            completion(.failure(NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey: "Invalid URL"])))
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey: "No data received"])))
                return
            }
            
            do {
                let superheroes = try JSONDecoder().decode([Superhero].self, from: data)
                completion(.success(superheroes))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
