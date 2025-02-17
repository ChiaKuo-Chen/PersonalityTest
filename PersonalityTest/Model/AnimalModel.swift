//
//  AnimalModel.swift
//  PersonalityTest
//

import Foundation

struct Animal : Identifiable, Hashable {
    
    var id = UUID()
    var title: String
    var overview: String
    var name: String
    var rarity: Double
    var description: String
    
    var friend: [Int?]
    
}
