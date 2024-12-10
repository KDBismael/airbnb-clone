//
//  ListingItemView.swift
//  Aibnb clone
//
//  Created by KDB-MacBook on 11/27/24.
//

import SwiftUI

struct ListingItemView: View {
    
//    var images=[
//        "image-1",
//        "image-2",
//        "image-3",
//    ]
//    
    let listing: Listing
    
    var body: some View {
        VStack(spacing: 8){
            //images
            ListingImageCarouselView(listing: listing)
                .frame(height:320)
                .clipShape(RoundedRectangle(cornerRadius: 10.0))
            
            //listing details
            
            HStack (alignment:.top ){
                //details
                VStack(alignment:.leading){
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("12 ml away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack (spacing:4){
                        Text("$\(listing.pricePerNight)")
                            .fontWeight(.semibold)
                        Text("night")
                    }.foregroundStyle(.black)
                }.font(.footnote)
                Spacer()
                //rating
                HStack(spacing:2){
                    Image(systemName: "star.fill")
                    Text("\(listing.rating.formatted())")
                }.foregroundStyle(.black)
            }
            
        }.padding()
    }
}

#Preview {
    ListingItemView( listing: DevelopperPreview.shared.listings[0])
}
