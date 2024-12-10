//
//  ListingImageCarouselView.swift
//  Aibnb clone
//
//  Created by KDB-MacBook on 12/1/24.
//

import SwiftUI

struct ListingImageCarouselView: View {
    let listing:Listing
    
    var body: some View {
        TabView{
            ForEach(listing.imageUrls, id:\.self){ image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView(listing: DevelopperPreview.shared.listings[0])
}
