//
//  Pet.swift
//  PetHealthTracker
//
//  Team Members: Albert Heinrichs, Patrizia Neubauer
//

import SwiftUI

protocol Breed {
    var desc: String { get }
}

struct Pet: Identifiable {
    let id: UUID = UUID()
    let name: String
    let age: Int
    let species: Species
    let breed: Breed
    let gender: Gender
    let image: String
    let weight: Double
    let microchipnumber: String
    let coloration: String
    
    enum Species: String, Identifiable, CaseIterable {
        var id: String {
            return self.rawValue.capitalized
        }
        
        case dog, cat, bird, rabbit, hamster, turtle, snake
    }
    
    enum Gender: String {
        case male, female
    }
    
    enum DogBreed: String, Breed {
        var desc: String {
            return rawValue.capitalized
        }
        
        case goldenretriever
        case havaneser
        case malteser
    }
    
    enum CatBreed: String, Breed {
        var desc: String {
            return rawValue.capitalized
        }
        
        case adf
        case afe
    }
    
    enum RabbitBreed: String, Breed {
        var desc: String {
            return rawValue.capitalized
        }
        
        case Zwergwidder
        case Löwenkopfkaninchen
    }
    
    static let rabbit = [
        Pet(name: "Olga", age: 3, species: Species.rabbit, breed: RabbitBreed.Zwergwidder, gender: Gender.female, image: "olga", weight: 2.1, microchipnumber: "P123as4", coloration: "beige")
    ]
}
