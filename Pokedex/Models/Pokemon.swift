//
//  Pokemon.swift
//  Pokedex
//
//  Created by Américo MQ on 24/11/22.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
    let description: String
    let attack: Int
    let height: Int
    let defense: Int
    let weight: Int
}

let MOCK_POKEMON: [Pokemon] = [
    .init(id: 0, name: "Bulbasour", imageUrl: "1", type: "poison", description: "Lorem Ipsum terrfjiofjefjeijeifjeifjueasefiuehfu", attack: 81, height: 72, defense: 35, weight: 69),
    .init(id: 1, name: "Ivasour", imageUrl: "1", type: "poison", description: "Lorem Ipsum terrfjiofjefjeijeifjeifjueasefiuehfu", attack: 81, height: 72, defense: 35, weight: 69),
    .init(id: 2, name: "Venusour", imageUrl: "1", type: "fire", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", attack: 81, height: 72, defense: 35, weight: 69),
    .init(id: 3, name: "Charmander", imageUrl: "1", type: "poison", description: "Lorem Ipsum terrfjiofjefjeijeifjeifjueasefiuehfu", attack: 81, height: 72, defense: 35, weight: 69),
    .init(id: 4, name: "Charmeleon", imageUrl: "1", type: "fire", description: "Lorem Ipsum terrfjiofjefjeijeifjeifjueasefiuehfu", attack: 81, height: 72, defense: 35, weight: 69),
    .init(id: 5, name: "Charizard", imageUrl: "1", type: "fire", description: "Lorem Ipsum terrfjiofjefjeijeifjeifjueasefiuehfu", attack: 81, height: 72, defense: 35, weight: 69)
]
