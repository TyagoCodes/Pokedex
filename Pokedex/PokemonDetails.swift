// PokemonDetails.swift

struct PokemonDetails: Decodable {
    let id: Int
    let name: String
    let weight: Int
    let sprites: Sprites
    let types: [TypeSlot]
}

struct Sprites: Decodable {
    let front_default: String?
}

struct TypeSlot: Decodable {
    let type: PokemonType
}

struct PokemonType: Decodable {
    let name: String
}
