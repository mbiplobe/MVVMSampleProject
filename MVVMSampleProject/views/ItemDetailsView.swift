//
//  ItemDetails.swift
//  CountrySwiftProject
//
//  Created by Mujahid Islam on 8/7/24.
//

import SwiftUI

struct ItemDetailsView: View {
    
    var object: ItemModel
    
    var body: some View {
            VStack(alignment: .leading) {
                HStack {
                    Text("ID")
                        .fontWeight(.bold)
                        .padding(2)
                        .frame(width: 150,alignment: .leading)
                    
                    Text(String(object.id))
                        .padding(2)
                        .frame(maxWidth: .infinity,alignment: .leading)
                }
                HStack {
                    Text("Name")
                        .fontWeight(.bold)
                        .padding(2)
                        .frame(width: 150,alignment: .leading)
                    
                    Text(object.name)
                        .padding(2)
                        .frame(maxWidth: .infinity,alignment: .leading)
                }
                HStack {
                    Text("Username")
                        .fontWeight(.bold)
                        .padding(2)
                        .frame(width: 150,alignment: .leading)
                    
                    Text(object.username)
                        .padding(2)
                        .frame(maxWidth: .infinity,alignment: .leading)
                }
                HStack {
                    Text("Email")
                        .fontWeight(.bold)
                        .padding(2)
                        .frame(width: 150,alignment: .leading)
                    
                    Text(object.email)
                        .padding(2)
                        .frame(maxWidth: .infinity,alignment: .leading)
                    
                }
                HStack {
                    Text("Address")
                        .fontWeight(.bold)
                        .padding(2)
                        .frame(width: 150,alignment: .leading)
                    
                    Text(object.address!.street + object.address!.suite + object.address!.city + object.address!.zipcode + object.address!.geo!.lat + object.address!.geo!.lng)
                        .padding(2)
                        .frame(maxWidth: .infinity,alignment: .leading)
                    
                }
                HStack {
                    Text("Phone")
                        .fontWeight(.bold)
                        .padding(2)
                        .frame(width: 150,alignment: .leading)
                    
                    Text(object.phone)
                        .padding(2)
                        .frame(maxWidth: .infinity,alignment: .leading)
                }
                HStack {
                    Text("Website")
                        .fontWeight(.bold)
                        .padding(2)
                        .frame(width: 150,alignment: .leading)
                    
                    Text(object.website)
                        .padding(2)
                        .frame(maxWidth: .infinity,alignment: .leading)
                }
                
            }.padding()
            .navigationTitle(object.name)
    }
}

//#Preview {
//    ItemDetails(object: Object())
//}
