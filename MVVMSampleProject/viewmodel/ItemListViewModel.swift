//
//  CountryViewModel.swift
//  CountrySwiftProject
//
//  Created by Mujahid Islam on 5/7/24.
//
import Combine
import Foundation

class ItemListViewModel
: ObservableObject {
    
    @Published var countries = [ItemModel]();
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    private var cancellables = Set<AnyCancellable>()
    
    func fetchUsers() {
        isLoading = true
        errorMessage = nil
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {
            errorMessage = "Invalid URL"
            isLoading = false
            return
        }
        
        URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: [ItemModel].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let error):
                    self.errorMessage = error.localizedDescription
                case .finished:
                    break
                }
                self.isLoading = false
            }, receiveValue: { item in
                self.countries = item
            })
            .store(in: &self.cancellables)
    }
}
