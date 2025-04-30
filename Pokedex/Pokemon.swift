//
//  Pokemon.swift
//  Pokedex
//
//  Created by Tyago on 2025-04-27.
//

import Foundation

struct PokemonResponse: Decodable {
    let results: [Pokemon]
}

struct Pokemon: Decodable {
    let name: String
    let url: String
}
