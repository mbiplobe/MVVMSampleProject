//
//  Object.swift
//  CountrySwiftProject
//
//  Created by Mujahid Islam on 7/7/24.
//

import Foundation

struct ItemModel: Codable,Identifiable{
    let temp = UUID()
    let id: Int
    let name: String
    let username: String
    let email: String
    let phone: String
    let website: String
    let address : Address?
    let company: Company?
    
    
    init(id: Int, name: String, username: String, email: String, phone: String, website: String, address: Address?, company: Company?) {
        self.id = id
        self.name = name
        self.username = username
        self.email = email
        self.phone = phone
        self.website = website
        self.address = address
        self.company = company
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.username = try container.decode(String.self, forKey: .username)
        self.email = try container.decode(String.self, forKey: .email)
        self.phone = try container.decode(String.self, forKey: .phone)
        self.website = try container.decode(String.self, forKey: .website)
        self.address = try container.decodeIfPresent(Address.self, forKey: .address)
        self.company = try container.decodeIfPresent(Company.self, forKey: .company)
    }
    

    

    
 
    
}

    struct Address: Codable {
        let street: String
        let suite: String
        let city: String
        let zipcode: String
        let geo : Geo?
        
        init(street: String, suite: String, city: String, zipcode: String, geo: Geo) {
            self.street = street
            self.suite = suite
            self.city = city
            self.zipcode = zipcode
            self.geo = geo
        }
        
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.street = try container.decode(String.self, forKey: .street)
            self.suite = try container.decode(String.self, forKey: .suite)
            self.city = try container.decode(String.self, forKey: .city)
            self.zipcode = try container.decode(String.self, forKey: .zipcode)
            self.geo = try container.decode(Geo.self, forKey: .geo)
        }
//        var geo: Geo
        
        
    }

    struct Geo:Codable {
        let lat : String
        let lng : String
        
        init(lat: String, lng: String) {
            self.lat = lat
            self.lng = lng
        }
        
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.lat = try container.decode(String.self, forKey: .lat)
            self.lng = try container.decode(String.self, forKey: .lng)
        }
        
}

struct Company: Codable {
    let name: String
    let catchPhrase: String
    let bs: String
    
    init(name: String, catchPhrase: String, bs: String) {
        self.name = name
        self.catchPhrase = catchPhrase
        self.bs = bs
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.catchPhrase = try container.decode(String.self, forKey: .catchPhrase)
        self.bs = try container.decode(String.self, forKey: .bs)
    }
    
}
