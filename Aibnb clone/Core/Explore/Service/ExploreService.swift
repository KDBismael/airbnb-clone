//
//  ExploreService.swift
//  Aibnb clone
//
//  Created by KDB-MacBook on 12/9/24.
//

import Foundation

class ExploreService{
    func fetchListings() async throws ->[Listing] {
        return DevelopperPreview.shared.listings
    }
}
