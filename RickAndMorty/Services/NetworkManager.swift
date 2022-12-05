//
//  NetworkManager.swift
//  RickAndMorty
//
//  Created by Anton Kaznacheev on 04.12.2022.
//

import Foundation

class NetworkManager {
    static var shared = NetworkManager()
    
    private init(){}
    
    func fetchData(from url: String?, wiht complition: @escaping(RickAndMorty) -> Void ){
        guard let urlString = url else {return}
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print(error)
                return
            }
            guard let data = data else {return}
        }.resume()
        
    }
    
    
    
    
 
}
