//
//  Contry.swift
//  CountrySwiftProject
//
//  Created by Mujahid Islam on 5/7/24.
//

import Foundation

struct Country : Codable,Identifiable {
    var id = UUID()
    let name : String
    let iso2 : String
    let long : Double
    let lat  :  Double
    
//    init(name: String, iso2: String, long: Double, lat: Double) {
//        self.name = name
//        self.iso2 = iso2
//        self.long = long
//        self.lat = lat
//    }
//    
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.name = try container.decode(String.self, forKey: .name)
//        self.iso2 = try container.decode(String.self, forKey: .iso2)
//        self.long = try container.decode(Double.self, forKey: .long)
//        self.lat = try container.decode(Double.self, forKey: .lat)
//    }
}


