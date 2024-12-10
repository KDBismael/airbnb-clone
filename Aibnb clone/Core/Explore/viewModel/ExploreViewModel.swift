//
//  ExploreViewModel.swift
//  Aibnb clone
//
//  Created by KDB-MacBook on 12/9/24.
//

import Foundation

class ExploreViewModel: ObservableObject{
    @Published var listings = [Listing]()
    @Published var searchLocation = ""
    private let service:ExploreService
    @Published var listingsCopy = [Listing]()
    
    init(service:ExploreService) {
        self.service = service
        
        Task{
            await fetchListing()
        }
    }
    
    func fetchListing() async {
        do {
            self.listings = try await service.fetchListings()
            self.listingsCopy=listings
        } catch {
            print("Error")
        }
    }
    
    func updateListingsForLocation(){
        let filteredListings = listings.filter {
            $0.city.lowercased() == searchLocation.lowercased() ||
            $0.state.lowercased() == searchLocation.lowercased()
        }
        
        self.listings = filteredListings.isEmpty ? listingsCopy : filteredListings
    }
    
}
