//
//  WishListView.swift
//  Aibnb clone
//
//  Created by KDB-MacBook on 12/9/24.
//

import SwiftUI

struct WishListView: View {
    var body: some View {
        
        NavigationStack{
            VStack(alignment:.leading,spacing:32){
                VStack(alignment: .leading,spacing:4){
                    Text("Log in to view your wish lists")
                        .font(.headline)
                    
                    Text("You can create, view or edit wishlists once  you've logged in.")
                        .font(.footnote)
                }
                
                Button(action: {
                    print("Log In")
                }) {
                    Text("Log in")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360,height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Wishlists")
        }
    }
}

#Preview {
    WishListView()
}
