//
//  Models.swift
//  CountrySwiftProject
//
//  Created by Mujahid Islam on 4/7/24.
//

import Foundation

struct Country: Codable, Equatable {
    let name: String
    let translations: [String: String?]
    let population: Int
    let flag: URL?
    let alpha3Code: Code
    typealias Code = String
    
    enum CodingKeys: String, CodingKey {
        case name
        case translations
        case population
        case flag = "alpha2Code"
        case alpha3Code
    }
    
    init(name: String, translations: [String: String?], population: Int, flag: URL?, alpha3Code: Code) {
        self.name = name
        self.translations = translations
        self.population = population
        self.flag = flag
        self.alpha3Code = alpha3Code
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.translations = try container.decode([String : String?].self, forKey: .translations)
        self.population = try container.decode(Int.self, forKey: .population)
        self.flag = try container.decodeIfPresent(URL.self, forKey: .flag)
        self.alpha3Code = try container.decode(Country.Code.self, forKey: .alpha3Code)
    }
    
    
    
}

extension Country{
    struct Details: Codable, Equatable {
        let capital: String
        let currencies: [Currency]
        let neighbors: [Country]
    }
}
