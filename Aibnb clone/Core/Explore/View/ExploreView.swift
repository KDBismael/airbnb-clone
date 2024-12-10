//
//  ExploreView.swift
//  Aibnb clone
//
//  Created by KDB-MacBook on 11/27/24.
//

import SwiftUI

struct ExploreView: View {
    @State  private  var showDestionationSearchView = false
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
    
    var body: some View {
        NavigationStack{
             
            if showDestionationSearchView{
                DestinationSearchView(show: $showDestionationSearchView, viewModel: viewModel)
            }else{
                ScrollView{
                    SearchAndFilterBar(location: $viewModel.searchLocation)
                        .onTapGesture {
                            withAnimation(.snappy){
                                showDestionationSearchView.toggle()
                            }
                        }
                    
                    LazyVStack(spacing: 32){
                        ForEach(viewModel.listings){listing in
                            NavigationLink(value:listing, label: {
                                ListingItemView( listing: listing)
                                    .frame(height: 410)
                                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                            })
                        }
                    }
                }.navigationDestination(for: Listing.self, destination: {listing in
                    ListingDetailsView(listing: listing)
                        .toolbar(.hidden)
                })
            }
        }
    }
}

#Preview {
    ExploreView()
}
