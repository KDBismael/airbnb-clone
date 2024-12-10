//
//  ListingDetailsView.swift
//  Aibnb clone
//
//  Created by KDB-MacBook on 12/1/24.
//

import SwiftUI
import MapKit

struct ListingDetailsView: View {
    
    @Environment(\.dismiss) var dismiss
    let listing: Listing
    @State private var cameraPosition: MapCameraPosition
    
    init(listing:Listing){
        self.listing = listing
        
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude:listing.lattitude, longitude: listing.longitude), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
        
        self._cameraPosition = State(initialValue: .region(region))
    }
    
    var body: some View {
        ScrollView{
            ZStack(alignment: .topLeading) {
                ListingImageCarouselView(listing: listing)
                    .frame(height:320)
                
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 32,height: 32)
                        }
                        .padding(32)
                })
            }
            
            VStack(alignment: .leading, spacing: 8){
                Text("\(listing.title)")
                    .font(.title)
                    .fontWeight(.semibold)
                VStack(alignment: .leading){
                    HStack(spacing:2){
                        Image(systemName: "star.fill")
                        Text("\(listing.rating.formatted())")
                        Text(" - ")
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    Text("\(listing.city), \(listing.state)")
                }.font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth:.infinity,alignment: .leading)
            
            Divider()
            
            //host info view
            HStack{
                VStack(alignment:.leading){
                    Text("Entire \(listing.type) hosted by \(listing.ownerName)")
                        .font(.headline)
                        .fontWeight(.bold)
                        .frame(width:250,alignment: .leading)
                    
                    HStack(spacing:2){
                        Text("\(listing.numberOfguests) guests -")
                        Text("\(listing.numberOfBedrooms) bedrooms -")
                        Text("\(listing.numberOfBeds) beds -")
                        Text("\(listing.numberOfBathrooms) baths")
                    }.font(.caption)
                }.frame(width: 300, alignment: .leading)
                
                Spacer()
                
                Image("\(listing.owerImageUrl)")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
            }.padding()
            
            Divider()
            
            //Listing features
            VStack(alignment: .leading, spacing: 16){
                ForEach(listing.features, content: { feature in
                    HStack(spacing:12){
                        Image(systemName: feature.imageName)
                        VStack(alignment: .leading){
                            Text(feature.title)
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text(feature.subtitle)
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                })
            }.padding()
            
            Divider()
            
            VStack(alignment:.leading){
                Text("Where you'll sleep")
                    .font(.headline)
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack{
                        ForEach(1 ... listing.numberOfBedrooms, id:\.self) { bedroom in
                            VStack{
                                Image(systemName: "bed.double")
                                Text("Bedroom \(bedroom)")
                            }
                            .frame(width: 132, height: 100)
                            .overlay(content: {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            })
                        }
                    }
                }.scrollTargetBehavior(.paging)
            }.padding()
            
            Divider()
            
            //listing ameneties
            VStack(alignment:.leading, spacing:16){
                Text("What this place offers")
                    .font(.headline)
                ForEach(listing.amenities, content: { amenity in
                    HStack{
                        Image(systemName: amenity.imageName)
                            .frame(width:32)
                        
                        Text(amenity.title)
                            .font(.footnote)
                        Spacer()
                    }
                })
            }.padding()
            
            Divider()
            
            //
            VStack(alignment:.leading, spacing:16){
                Text("Where you'll be")
                    .font(.headline)
                
                Map(position: $cameraPosition){
                    
                }
                .frame(height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                
            }.padding()
        }
        .toolbarVisibility(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .padding(.bottom, 64)
        .overlay(alignment:.bottom,content: {
            VStack(content: {
                Divider()
                    .padding(.bottom)
                
                HStack{
                    VStack(alignment: .leading){
                        Text("$\(listing.pricePerNight)")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Total before taxes")
                        
                        Text("Oct 15 - 20")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    Spacer()
                    
                    Button(action: {}, label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    })
                }.padding(.horizontal,32)
            }).background(.white)
        })
        
    }
}

#Preview {
    ListingDetailsView(listing: DevelopperPreview.shared.listings[0])
}
