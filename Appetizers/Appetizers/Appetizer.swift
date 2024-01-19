//
//  Appetizer.swift
//  Appetizers
//
//  Created by Matthew Zbik on 2024-01-19.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 01,
                                           name: "Test Appetizer",
                                           description: "This is the description for appetizer, it's yummy",
                                           price: 9.99,
                                           imageURL: "asian-flank-steak", 
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
