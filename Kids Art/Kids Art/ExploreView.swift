//
//  ExploreView.swift
//  Kids Art
//
//  Created by Francisca Ordaz on 10/05/23.
//

import SwiftUI

struct ExploreView: View {
    //To do: drop a list with the paintings' titles
    @State private var searchText = ""
    
    var body: some View {
        
        VStack{
            Color("Background")
                .edgesIgnoringSafeArea(.all)
            HStack{
                Text("Choose a Painting")
                    .fontWeight(.semibold)
                    .padding(40)
                    .font(.system(size: 29.56))
                
                Spacer()
                
                HStack {
                    Circle()
                        .fill(Color(red: 245 / 255, green: 242 / 255, blue: 242 / 255))
                        .frame(width: 98, height: 98)
                        .overlay(Text("🐵")
                            .font(.system(size: 54.02)))
                        .padding(.trailing, 50)
                }
            }
            Divider()
                .frame(width: 783)
            HStack {
                //Paintings available to be coloured
                //I have to create a struct for images like the professors app, so I can make the code cleaner and manage all the future paintings by 1 single struct and not changing manually everytime
                Paintings(image: "1.2", colouredImage: "1")
                
                Paintings(image: "1.3", colouredImage: "7")
                
                Paintings(image: "1.16", colouredImage: "11")
            }
            
            HStack {
                Paintings(image: "1.14", colouredImage: "9")
                
                Paintings(image: "1.15", colouredImage: "10")
                
                Paintings(image: "1.11", colouredImage: "2")
            }
            
            HStack {
                Paintings(image: "1.17", colouredImage: "6")
                
                Paintings(image: "1.12", colouredImage: "3")
                
                Paintings(image: "1.13", colouredImage: "4")
            }
        }
    }
    
    
    struct ExploreView_Previews: PreviewProvider {
        static var previews: some View {
            ExploreView()
            
            ExploreView()
                .environment(\.colorScheme, .dark)
        }
    }
    
    struct Paintings: View {
        let image: String
        let colouredImage: String
        var body: some View {
            NavigationLink {
                DrawingView(image: image)
            } label: {
                Image(colouredImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300,height: 200)
                    .cornerRadius(25)
            }
        }
    }
}
