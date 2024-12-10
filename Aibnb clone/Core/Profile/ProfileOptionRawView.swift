//
//  ProfileOptionRawView.swift
//  Aibnb clone
//
//  Created by KDB-MacBook on 12/9/24.
//

import SwiftUI

struct ProfileOptionRawView: View {
    let title:String;
    let imageName:String;
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imageName)
                Text(title)
                    .font(.subheadline)
                
                Spacer()
                
                Image(systemName: "chevron.right")
            }
            
            Divider()
        }
    }
}

#Preview {
    ProfileOptionRawView(title: "Settings", imageName: "gear")
}
