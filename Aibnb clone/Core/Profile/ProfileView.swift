//
//  ProfileView.swift
//  Aibnb clone
//
//  Created by KDB-MacBook on 12/9/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            //Profile login view
            VStack(alignment:.leading, spacing: 32){
                
                VStack(alignment:.leading,spacing: 8) {
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    
                    Text("Log in to start planning your next trip.")
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
                
                HStack{
                    Text("Don't have an account?")
                    
                    Text("Sign up")
                        .fontWeight(.semibold)
                        .underline()
                }.font(.caption)
            }
            
            VStack(spacing:24){
                ProfileOptionRawView(title: "Settings", imageName: "gear")
                ProfileOptionRawView(title: "Accecibility", imageName: "gear")
                ProfileOptionRawView(title: "Visit the help center", imageName: "questionmark.circle")
            }
            .padding(.vertical)
        }.padding()
    }
}

#Preview {
    ProfileView()
}
