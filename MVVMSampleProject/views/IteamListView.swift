//
//  ContentView.swift
//  CountrySwiftProject
//
//  Created by Mujahid Islam on 4/7/24.
//

import SwiftUI

struct ItemListView: View {
    @ObservedObject var viewModel = ItemListViewModel()
    
    var body: some View {
        
        NavigationView {
        
            VStack{
                if viewModel.isLoading {
                    ProgressView("Loading...")
                }else if let error =  viewModel.errorMessage {
                    
                    
                    Text(error)
                    
                }else{
                    
                    List(viewModel.countries) { country in
                        
                        NavigationLink(destination: ItemDetailsView(object: country)){
                            HStack {
                                Text(country.name).padding()
                             
                            }
                        }.navigationTitle("Item List")
                           
                        
                    }
                }
            }.onAppear(perform: {
                viewModel.fetchUsers()
            })
        }
    }
}

#Preview {
    ItemListView()
}
