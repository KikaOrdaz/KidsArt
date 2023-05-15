//
//  ProfilePageView.swift
//  Kids Art
//
//  Created by Maria on 12/05/23.
//

import SwiftUI

struct ProfilePageView: View {

    @AppStorage("profilepic") var selectedImage: String?
    @AppStorage("profilecolor") var profileColor: String?
    
    private var availablePics = ["☃️", "🌍", "🌞", "😊", "😡", "👽",
                                 "🎨", "🧸", "🐴", "🐬", "🌚", "🔥",
                                 "🐵", "🦁", "🐶", "🪐", "⚽️", "🏀"]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
       ]
    
    var body: some View {
            VStack {
                HStack {
                    Spacer()
                    
                    Circle()
                        .frame(width: 162, height: 162)
                        .padding()
                        .foregroundColor(stringToColor(string: profileColor ?? ""))
                        .overlay(
                            Text(selectedImage ?? "🐵")
                                .font(.system(size: 89.29))
                        )
                    
                    Spacer()
                }
                
                Text("Choose your pic")
                    .fontWeight(.regular)
                    .font(.system(size: 33))

                Rectangle()
                    .frame(width: 58, height: 1)
                    .foregroundColor(.accentColor)
                
                LazyVGrid(columns: columns, spacing: 0){
                    ForEach(availablePics, id: \.self){ pic in
                        Button {
                            selectedImage = pic
                        } label: {
                            Circle()
                                .frame(width: 120, height: 120)
                                .padding()
                                .foregroundColor(stringToColor(string: profileColor ?? ""))
                                .overlay(
                                    Text(pic)
                                        .font(.system(size: 60))
                                )
                        
                        }
                       
                    }
                }
                
                }
            .frame(width: 800)
    }
}



struct ProfilePageView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePageView()
    }
}
