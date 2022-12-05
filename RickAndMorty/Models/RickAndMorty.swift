//
//  RickAndMorty.swift
//  RickAndMorty
//
//  Created by Anton Kaznacheev on 04.12.2022.
//

struct RickAndMorty {
    let info: Info
    let results: [Results]
    
}

struct Info {
    let pages: Int
    let next: String?
    let prev: String?
}

struct Results {
    let id: Int
    let name: String
    let status: String
    let species: String
    let gender: String
    let origin: Location
    let location: Location
    let image: String?
    let episode: [String]
    let url: String
    
    var descriptor: String {
        """
        Name: \(name)
        Status: \(status)
        Species: \(species)
        Origin: \(origin)
        Location: \(location)
        """
    }
    
}

struct Location {
    let name: String
}

struct Episode {
    let name: String
    let date: String
    let episode: String
    let characters: [String]
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case data = "air_date"
        case episode = "episode"
        case characters = "characters"
    }
}

enum URLS: String {
    case rickAndMortyapi = "https://rickandmortyapi.com/api/character"
}
